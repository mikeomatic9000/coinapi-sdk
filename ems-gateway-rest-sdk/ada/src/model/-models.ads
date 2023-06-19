--  EMS _ REST API
--  This section will provide necessary information about the `CoinAPI EMS REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>        Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints  <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems_docs_sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems_gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self_Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X_CoinAPI_Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X_CoinAPI_Key` and API key as its value. Assuming that your API key is `73034021_THIS_IS_SAMPLE_KEY`, then the authorization header you should send to us will look like: `X_CoinAPI_Key: 73034021_THIS_IS_SAMPLE_KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021_THIS_IS_SAMPLE_KEY` and that you want to request all balances, then your query string should look like this: `GET /v1/balances?apikey=73034021_THIS_IS_SAMPLE_KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
--
--  The version of the OpenAPI document: v1
--  Contact: support@coinapi.io
--
--  NOTE: This package is auto generated by OpenAPI-Generator 6.6.0.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with Swagger.Streams;
with Ada.Containers.Vectors;
package .Models is
   pragma Style_Checks ("-mr");


   --  ------------------------------
   --  Order history
   --  ------------------------------
   type OrderHistory_Type is
     record
       Apikey : Swagger.Nullable_UString;
       Exchange_Id : Swagger.Nullable_UString;
       Client_Order_Id : Swagger.Nullable_UString;
       Symbol_Id_Exchange : Swagger.Nullable_UString;
       Symbol_Id_Coinapi : Swagger.Nullable_UString;
       Amount_Order : Swagger.Number;
       Price : Swagger.Number;
       Side : Swagger.Number;
       Order_Type : Swagger.Nullable_UString;
       Time_In_Force : Swagger.Nullable_UString;
       Expire_Time : Swagger.Nullable_Date;
       Exec_Inst : Swagger.UString_Vectors.Vector;
       Client_Order_Id_Format_Exchange : Swagger.Nullable_UString;
       Exchange_Order_Id : Swagger.Nullable_UString;
       Amount_Open : Swagger.Number;
       Amount_Filled : Swagger.Number;
       Avg_Px : Swagger.Number;
       Status : Swagger.Nullable_UString;
       Status_History_Status : Swagger.UString_Vectors.Vector;
       Status_History_Time : Swagger.Date_Vectors.Vector;
       Error_Message_Result : Swagger.Nullable_UString;
       Error_Message_Reason : Swagger.Nullable_UString;
       Error_Message_Message : Swagger.Nullable_UString;
       Fills_Time : Swagger.Date_Vectors.Vector;
       Fills_Price : Swagger.Number_Vectors.Vector;
       Fills_Amount : Swagger.Number_Vectors.Vector;
       Created_Time : Swagger.Nullable_Date;
     end record;

   package OrderHistory_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderHistory_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderHistory_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderHistory_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderHistory_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderHistory_Type_Vectors.Vector);




   type RejectReason_Type is
     record
     end record;

   package RejectReason_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => RejectReason_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in RejectReason_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in RejectReason_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out RejectReason_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out RejectReason_Type_Vectors.Vector);



   --  ------------------------------
   --  MessageReject object.
   --  ------------------------------
   type MessageReject_Type is
     record
       P_Type : Swagger.Nullable_UString;
       Reject_Reason : .Models.RejectReason_Type;
       Exchange_Id : Swagger.Nullable_UString;
       Message : Swagger.Nullable_UString;
       Rejected_Message : Swagger.Nullable_UString;
     end record;

   package MessageReject_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => MessageReject_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessageReject_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessageReject_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessageReject_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessageReject_Type_Vectors.Vector);



   --  ------------------------------
   --  JSON validation error.
   --  ------------------------------
   type ValidationError_Type is
     record
       P_Type : Swagger.Nullable_UString;
       Title : Swagger.Nullable_UString;
       Status : Swagger.Number;
       Trace_Id : Swagger.Nullable_UString;
       Errors : Swagger.Nullable_UString;
     end record;

   package ValidationError_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => ValidationError_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ValidationError_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ValidationError_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ValidationError_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ValidationError_Type_Vectors.Vector);




   type OrdType_Type is
     record
     end record;

   package OrdType_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrdType_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdType_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdType_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdType_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdType_Type_Vectors.Vector);




   type OrdStatus_Type is
     record
     end record;

   package OrdStatus_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrdStatus_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdStatus_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdStatus_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdStatus_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdStatus_Type_Vectors.Vector);




   type OrderCancelAllRequest_Type is
     record
       Exchange_Id : Swagger.UString;
     end record;

   package OrderCancelAllRequest_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderCancelAllRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelAllRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelAllRequest_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelAllRequest_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelAllRequest_Type_Vectors.Vector);




   type OrderCancelSingleRequest_Type is
     record
       Exchange_Id : Swagger.UString;
       Exchange_Order_Id : Swagger.Nullable_UString;
       Client_Order_Id : Swagger.Nullable_UString;
     end record;

   package OrderCancelSingleRequest_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderCancelSingleRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelSingleRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelSingleRequest_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelSingleRequest_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelSingleRequest_Type_Vectors.Vector);




   type OrdSide_Type is
     record
     end record;

   package OrdSide_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrdSide_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdSide_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdSide_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdSide_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdSide_Type_Vectors.Vector);




   type TimeInForce_Type is
     record
     end record;

   package TimeInForce_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => TimeInForce_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in TimeInForce_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in TimeInForce_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out TimeInForce_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out TimeInForce_Type_Vectors.Vector);




   type OrderNewSingleRequest_Type is
     record
       Exchange_Id : Swagger.UString;
       Client_Order_Id : Swagger.UString;
       Symbol_Id_Exchange : Swagger.Nullable_UString;
       Symbol_Id_Coinapi : Swagger.Nullable_UString;
       Amount_Order : Swagger.Number;
       Price : Swagger.Number;
       Side : .Models.OrdSide_Type;
       Order_Type : .Models.OrdType_Type;
       Time_In_Force : .Models.TimeInForce_Type;
       Expire_Time : Swagger.Nullable_Date;
       Exec_Inst : Swagger.UString_Vectors.Vector;
     end record;

   package OrderNewSingleRequest_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderNewSingleRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderNewSingleRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderNewSingleRequest_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderNewSingleRequest_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderNewSingleRequest_Type_Vectors.Vector);



   --  ------------------------------
   --  Relay fill information on working orders.
   --  ------------------------------
   type Fills_Type is
     record
       Time : Swagger.Nullable_Date;
       Price : Swagger.Number;
       Amount : Swagger.Number;
     end record;

   package Fills_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Fills_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Fills_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Fills_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Fills_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Fills_Type_Vectors.Vector);




   type OrderExecutionReport_Type is
     record
       Exchange_Id : Swagger.UString;
       Client_Order_Id : Swagger.UString;
       Symbol_Id_Exchange : Swagger.Nullable_UString;
       Symbol_Id_Coinapi : Swagger.Nullable_UString;
       Amount_Order : Swagger.Number;
       Price : Swagger.Number;
       Side : .Models.OrdSide_Type;
       Order_Type : .Models.OrdType_Type;
       Time_In_Force : .Models.TimeInForce_Type;
       Expire_Time : Swagger.Nullable_Date;
       Exec_Inst : Swagger.UString_Vectors.Vector;
       Client_Order_Id_Format_Exchange : Swagger.UString;
       Exchange_Order_Id : Swagger.Nullable_UString;
       Amount_Open : Swagger.Number;
       Amount_Filled : Swagger.Number;
       Avg_Px : Swagger.Number;
       Status : .Models.OrdStatus_Type;
       Status_History : Swagger.UString_Vectors.Vector_Vectors.Vector;
       Error_Message : Swagger.Nullable_UString;
       Fills : .Models.Fills_Type_Vectors.Vector;
     end record;

   package OrderExecutionReport_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderExecutionReport_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReport_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReport_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReport_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReport_Type_Vectors.Vector);




   type OrderExecutionReportAllOf_Type is
     record
       Client_Order_Id_Format_Exchange : Swagger.UString;
       Exchange_Order_Id : Swagger.Nullable_UString;
       Amount_Open : Swagger.Number;
       Amount_Filled : Swagger.Number;
       Avg_Px : Swagger.Number;
       Status : .Models.OrdStatus_Type;
       Status_History : Swagger.UString_Vectors.Vector_Vectors.Vector;
       Error_Message : Swagger.Nullable_UString;
       Fills : .Models.Fills_Type_Vectors.Vector;
     end record;

   package OrderExecutionReportAllOf_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderExecutionReportAllOf_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReportAllOf_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReportAllOf_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReportAllOf_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReportAllOf_Type_Vectors.Vector);



   --  ------------------------------
   --  MessageError object.
   --  ------------------------------
   type MessageError_Type is
     record
       Message : Swagger.Nullable_UString;
     end record;

   package MessageError_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => MessageError_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessageError_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessageError_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessageError_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessageError_Type_Vectors.Vector);




   type BalanceDataInner_Type is
     record
       Asset_Id_Exchange : Swagger.Nullable_UString;
       Asset_Id_Coinapi : Swagger.Nullable_UString;
       Balance : double;
       Available : double;
       Locked : double;
       Last_Updated_By : Swagger.Nullable_UString;
       Rate_Usd : double;
       Traded : double;
     end record;

   package BalanceDataInner_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => BalanceDataInner_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in BalanceDataInner_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in BalanceDataInner_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out BalanceDataInner_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out BalanceDataInner_Type_Vectors.Vector);




   type Balance_Type is
     record
       Exchange_Id : Swagger.Nullable_UString;
       Data : .Models.BalanceDataInner_Type_Vectors.Vector;
     end record;

   package Balance_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Balance_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Balance_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Balance_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Balance_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Balance_Type_Vectors.Vector);




   type Position_Type is
     record
       Exchange_Id : Swagger.Nullable_UString;
       Data : .Models.PositionDataInner_Type_Vectors.Vector;
     end record;

   package Position_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Position_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Position_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Position_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Position_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Position_Type_Vectors.Vector);




   type PositionDataInner_Type is
     record
       Symbol_Id_Exchange : Swagger.Nullable_UString;
       Symbol_Id_Coinapi : Swagger.Nullable_UString;
       Avg_Entry_Price : Swagger.Number;
       Quantity : Swagger.Number;
       Side : .Models.OrdSide_Type;
       Unrealized_Pnl : Swagger.Number;
       Leverage : Swagger.Number;
       Cross_Margin : Swagger.Nullable_Boolean;
       Liquidation_Price : Swagger.Number;
       Raw_Data : Swagger.Object;
     end record;

   package PositionDataInner_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => PositionDataInner_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PositionDataInner_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PositionDataInner_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PositionDataInner_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PositionDataInner_Type_Vectors.Vector);



end .Models;
