package sample;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import sample.connectivity.ConnectionClass;

import javax.security.auth.callback.ConfirmationCallback;
import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Optional;
import java.util.ResourceBundle;


public class BusController implements Initializable {


    public Button book;
    public TextField txtname;
    public TextField txtphone;
    public TextField txtsource;
    public TextField txtdest;
    public TextField txtservice;
    public TextField txtdate;
    public TextField txtseat;
    public TextField txtfare;
    public  Label totalfare,avaiseats;
    public Label datelabel;
    public Label sourcelabel;
    public Label dlabel;
    public Label serlabel;
    public Label flabel;
    public Hyperlink logout;
    public Button proceed;
    public Button cancel;
    ResultSet resultSet;
    PreparedStatement pst;
    @FXML
    public ComboBox from;
    @FXML
    public ComboBox to;
    @FXML
    public DatePicker date;

    @FXML
    private TableView<Service> tableview;

    @FXML
    private TableColumn<Service, String> service;

    @FXML
    private TableColumn<Service, String> source ;

    @FXML
    private TableColumn<Service, String> destination ;

    @FXML
    private TableColumn<Service, Integer> fare;
    @FXML
    private TableColumn<Service, Integer> dtime;
    @FXML
    private TableColumn<Service, Integer> atime;
    @FXML
    private TableColumn<Service, Integer> seats;


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        connect();
        setcellvalue();
        service.setCellValueFactory(new PropertyValueFactory<>("service"));
        source.setCellValueFactory(new PropertyValueFactory<>("source"));
        destination.setCellValueFactory(new PropertyValueFactory<>("dest"));
        fare.setCellValueFactory(new PropertyValueFactory<>("fare"));
        dtime.setCellValueFactory(new PropertyValueFactory<>("dtime"));
        atime.setCellValueFactory(new PropertyValueFactory<>("atime"));
        seats.setCellValueFactory(new PropertyValueFactory<>("seats"));

    }

    public void connect() {

        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        // ObservableList<Object> data = FXCollections.observableArrayList();
        try {
            pst = connection.prepareStatement("select * from book ");
            resultSet = pst.executeQuery();
            while (resultSet.next()) {
                from.getItems().addAll(resultSet.getString("from"));
                to.getItems().addAll(resultSet.getString("to"));


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    public void search(ActionEvent actionEvent)  {


        loaddata();
    }



    private void loaddata() {


        ObservableList<Service> data = FXCollections.observableArrayList();

        String source = from.getSelectionModel().getSelectedItem().toString();
        String dest = to.getSelectionModel().getSelectedItem().toString();
        String Date = ((LocalDate)this.date.getValue()).format(DateTimeFormatter.ISO_LOCAL_DATE);

        ConnectionClass connectionClass = new ConnectionClass();
        Connection connection = connectionClass.getConnection();
        PreparedStatement pst;
        try {
            //and date = '"+Date+"'
            pst = connection.prepareStatement("select *  from search where source ='"+source+"' and dest = '"+dest+"'and date = '"+Date+"' ");

            ResultSet rs = pst.executeQuery();

            while (rs.next())
            {
               data.add(new Service(
                rs.getString(1),
                rs.getString(2),
                rs.getString(3),
                rs.getInt(4),
                rs.getTime(5),
                rs.getTime(6),
                rs.getInt(7),
                rs.getString(8)));


                tableview.setItems(data);





            }



        } catch(SQLException e){


            e.printStackTrace();

        }




    }
        private void setcellvalue(){
        tableview.setOnMouseClicked(e-> {
            Service service = tableview.getItems().get(tableview.getSelectionModel().getSelectedIndex());
            sourcelabel.setText(service.getSource());
            serlabel.setText(service.getService());
            dlabel.setText(service.getDestination());
            flabel.setText(String.valueOf(service.getFare()));
            avaiseats.setText(String.valueOf(service.getSeats()));
            datelabel.setText(String.valueOf(service.getDt()));



        });
        }


    public void bookticket(MouseEvent mouseEvent) throws IOException {

        Service selectedrow = tableview.getSelectionModel().getSelectedItem();
        if (selectedrow == null) {
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setContentText("No bus selected");
            alert.showAndWait();
        } else {
            setcellvalue();
            String avaiseat =avaiseats.getText();
            String name = txtname.getText();
            String no= txtphone.getText();
            String seatss = txtseat.getText();
            String date = datelabel.getText();
            String far = flabel.getText();

            String sourc = sourcelabel.getText();
            String des = dlabel.getText();
            String ser = serlabel.getText();


            ConnectionClass connectionClass = new ConnectionClass();
            Connection connection = connectionClass.getConnection();

            Statement statement = null;
            try {
                int tot = Integer.parseInt(String.valueOf(far)) * Integer.parseInt(String.valueOf(seatss));
                totalfare.setText(String.valueOf(tot));
                String tfare = totalfare.getText();

                statement = connection.createStatement();
                int status = statement.executeUpdate("insert into bookings values('"+name+"','"+no+"','"+sourc+"','"+des+"','"+ser+"'," +
                        "'"+date+"','"+seatss+"','"+tfare+"')");
                if (status > 0) {


                    int remainingseat =  Integer.parseInt(String.valueOf(avaiseat)) - Integer.parseInt(seatss) ;
                    String update = "update search set seat='"+remainingseat+"' where source = '"+sourc+"' and dest = '"+des+"' and service ='"+ser+"' ";
                    int j =statement.executeUpdate(update);
                    if (j==1){
                    }

                    }


                else {
                    Alert alert = new Alert(Alert.AlertType.NONE);
                    alert.setAlertType(Alert.AlertType.ERROR);
                    alert.setContentText("Invalid ");
                    alert.show();
                }



            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }





        }
    }


    public void logout(ActionEvent actionEvent) {

        Parent parent = null;
        try {
            parent = FXMLLoader.load(getClass().getResource("sample.fxml"));
            Scene scene = new Scene(parent);
            Stage window = (Stage)((Node) actionEvent.getSource()).getScene().getWindow();
            window.setScene(scene);
            window.show();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    public void proceed(ActionEvent actionEvent) {



        try {
            Parent parent = FXMLLoader.load(getClass().getResource("payment.fxml"));
            Scene scene = new Scene(parent);
            Stage window = (Stage)((Node) actionEvent.getSource()).getScene().getWindow();
            window.setScene(scene);
            window.show();


        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void cancel(ActionEvent actionEvent) {

        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setContentText("Are you sure ?");
        Optional<ButtonType> result = alert.showAndWait();
        if (result.get() == ButtonType.OK){


            try {
                Parent parent = FXMLLoader.load(getClass().getResource("book.fxml"));
                Scene scene = new Scene(parent);
                Stage window = (Stage)((Node) actionEvent.getSource()).getScene().getWindow();
                window.setScene(scene);
                window.show();


            } catch (IOException e) {
                e.printStackTrace();
            }


        }



    }
}

