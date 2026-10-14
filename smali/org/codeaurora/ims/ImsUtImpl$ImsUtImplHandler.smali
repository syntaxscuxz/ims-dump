.class Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsUtImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUtImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 823
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 826
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 827
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message received: what = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    iget-object v2, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$misDisposed(Lorg/codeaurora/ims/ImsUtImpl;)Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v2, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 839
    :cond_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const-string v4, "SuppSvc "

    const-string v5, "SuppSvcResponse failure with neither ar.result nor userObj"

    const-string v6, "Success callback on Query event= "

    const-string v7, "Error for Query Event= "

    const-string v8, "SuppSvcResponse failure with neither errordetails nor failurecause"

    const-string v9, "Service= "

    const-string v10, "Success callback called for msg.what= "

    const/4 v11, 0x0

    const-string v13, "Invalid message id received in handleMessage."

    const-string v14, "ImsUtImpl"

    const/4 v15, 0x0

    const/16 v12, 0x324

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    .line 974
    :pswitch_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_46

    .line 976
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_1

    .line 977
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 981
    :cond_1
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_6

    .line 982
    const-string v3, "Update CB_ALL error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 983
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 984
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/CallBarringStatusInfo;

    .line 985
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallBarringStatusInfo;->getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 987
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v11

    :cond_2
    if-eqz v11, :cond_3

    .line 988
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 990
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 992
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-direct {v2, v12, v3, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 990
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 994
    :cond_3
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 995
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 994
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 997
    :cond_4
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 998
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 999
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 998
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1001
    :cond_5
    const-string v3, "setAllCallBarring failure with neither  ar.result nor userObj"

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1004
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1003
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1008
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    return-void

    .line 1449
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1450
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7

    .line 1451
    iget-object v1, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ims/ImsSsData;

    .line 1452
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    return-void

    .line 1454
    :cond_7
    const-string v1, "exception in handling UNSOL_ON_SS"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 929
    :pswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_46

    .line 931
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_8

    .line 932
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 936
    :cond_8
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_c

    .line 937
    const-string v3, "Update CB error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 938
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_b

    .line 939
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 940
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 942
    const-string v2, "SuppSvcResponse has failure for CB update."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 945
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v12, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 943
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 947
    :cond_9
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 948
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 950
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v12, v15, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 951
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CB update failed with error = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 956
    :cond_a
    invoke-static {v14, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 959
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 958
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 962
    :cond_b
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 963
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 962
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 968
    :cond_c
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    return-void

    .line 842
    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_46

    .line 844
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_d

    .line 845
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 849
    :cond_d
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_e

    .line 850
    const-string v3, "Query CB error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_46

    .line 853
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 854
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 853
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 857
    :cond_e
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_16

    .line 858
    iget-object v2, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 859
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 861
    const-string v2, "SuppSvcResponse has failure for CB query."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 864
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v12, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 862
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 866
    :cond_f
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10

    .line 867
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 869
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v12, v15, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "CB query failed with error = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 874
    :cond_10
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v4

    if-ne v4, v3, :cond_11

    .line 875
    const-string v2, "No service status info in response for CB query."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 876
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v12, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 881
    :cond_11
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 882
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 884
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v2

    .line 885
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    .line 886
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    .line 888
    invoke-virtual {v5}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->getLines()Ljava/util/List;

    move-result-object v5

    .line 889
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    .line 890
    new-instance v7, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 892
    invoke-virtual {v6}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getStatus()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 894
    invoke-virtual {v6}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 893
    invoke-virtual {v7, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 895
    invoke-virtual {v7}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 899
    :cond_13
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 901
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/telephony/ims/ImsSsInfo;

    .line 900
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/ims/ImsSsInfo;

    .line 899
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    return-void

    :cond_14
    const/4 v3, 0x1

    .line 903
    new-array v4, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 905
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_15

    const/4 v12, 0x1

    goto :goto_1

    :cond_15
    move v12, v15

    .line 908
    :goto_1
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v2, v12}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 910
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 911
    aput-object v2, v4, v15

    .line 912
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "success callback Query Anonymous CB, status= "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 914
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 920
    :cond_16
    const-string v2, "Null response received for Query CB!"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v12, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1324
    :pswitch_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_46

    .line 1326
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_17

    .line 1327
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1330
    :cond_17
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_18

    .line 1331
    const-string v3, "Query COLP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1333
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_46

    .line 1334
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1336
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1334
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1339
    :cond_18
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_46

    .line 1342
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1343
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 1345
    const-string v2, "SuppSvcResponse has failure for COLP query."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1346
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1348
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v12, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1346
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1349
    :cond_19
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    .line 1350
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1352
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v12, v15, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1353
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "COLP query failed with error = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1359
    :cond_1a
    iget-object v2, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1360
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1361
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1362
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v4

    .line 1363
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getProvisionStatus()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " provision Status= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1364
    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1368
    const-string v2, "Success callback called for Query COLP."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1369
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 1281
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1282
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppService;

    if-eqz v2, :cond_46

    .line 1284
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_1b

    .line 1285
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1288
    :cond_1b
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1d

    .line 1289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1291
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_46

    .line 1292
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1300
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    if-eqz v3, :cond_1c

    .line 1294
    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1297
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    .line 1298
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v12, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1294
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1300
    :cond_1c
    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1302
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1300
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    :cond_1d
    if-eqz v3, :cond_46

    .line 1306
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1307
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1308
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v4

    .line 1309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " status= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1309
    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getProvisionStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Provision Status= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1313
    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1317
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 1247
    :pswitch_6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1248
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppService;

    if-eqz v2, :cond_46

    .line 1250
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_1e

    .line 1251
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1254
    :cond_1e
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_20

    .line 1255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1256
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_46

    .line 1257
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1265
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    if-eqz v3, :cond_1f

    .line 1259
    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1262
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    .line 1263
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v12, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1259
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1265
    :cond_1f
    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1267
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1265
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    :cond_20
    if-eqz v3, :cond_46

    .line 1271
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1272
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1274
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1275
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 1274
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 1381
    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_46

    .line 1383
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_21

    .line 1384
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1387
    :cond_21
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2a

    .line 1388
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_22

    .line 1389
    const-string v3, "Update CLIR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1391
    :cond_22
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_23

    .line 1392
    const-string v3, "Update CLIP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1394
    :cond_23
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v6, 0xa

    if-ne v3, v6, :cond_24

    .line 1395
    const-string v3, "Update COLR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1397
    :cond_24
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v6, 0xc

    if-ne v3, v6, :cond_25

    .line 1398
    const-string v3, "Update COLP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1400
    :cond_25
    :goto_2
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_28

    .line 1403
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1405
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    if-eqz v5, :cond_26

    .line 1407
    const-string v2, "SuppSvcResponse has failure for CLIP/COLP update"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1409
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1412
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v12, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1409
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1413
    :cond_26
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_27

    .line 1414
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1416
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v12, v15, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1422
    :cond_27
    invoke-static {v14, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1426
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1424
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1428
    :cond_28
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_29

    .line 1429
    const-string v3, "SuppSvcResponse failure with valid userObj"

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1432
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1430
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1435
    :cond_29
    invoke-static {v14, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1439
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1437
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1442
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1444
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    return-void

    .line 1212
    :pswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_46

    .line 1214
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_2b

    .line 1215
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1218
    :cond_2b
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2d

    .line 1219
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2c

    .line 1220
    const-string v3, "Query CLIR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1223
    :cond_2c
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_46

    .line 1224
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1226
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1224
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1229
    :cond_2d
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_46

    .line 1230
    iget-object v2, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    if-eqz v2, :cond_2e

    .line 1231
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2e

    .line 1233
    new-instance v4, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v4, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    aget v3, v2, v15

    .line 1234
    invoke-virtual {v4, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    const/16 v16, 0x1

    aget v2, v2, v16

    .line 1235
    invoke-virtual {v3, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 1236
    const-string v3, "Calling success callback for Query CLIR."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1237
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 1240
    :cond_2e
    const-string v1, "Received invalid response for Query CLIR."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1017
    :pswitch_9
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_46

    .line 1019
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_2f

    .line 1020
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1023
    :cond_2f
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_34

    .line 1024
    const-string v3, "Update CW error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_32

    .line 1029
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1031
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    if-eqz v5, :cond_30

    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SuppSvcResponse has failure for msg.what= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1037
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v12, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1035
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1038
    :cond_30
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_31

    .line 1039
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1042
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v12, v15, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed with error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1048
    :cond_31
    invoke-static {v14, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1051
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1050
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1054
    :cond_32
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_33

    .line 1055
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1056
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1055
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1059
    :cond_33
    invoke-static {v14, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1062
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1061
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1066
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    return-void

    .line 1155
    :pswitch_a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_46

    .line 1157
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_35

    .line 1158
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1161
    :cond_35
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_36

    .line 1162
    const-string v3, "Query CW error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1163
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_46

    .line 1164
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1166
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1164
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1169
    :cond_36
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_3a

    .line 1170
    iget-object v2, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x1

    .line 1172
    new-array v4, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 1175
    aget v5, v2, v15

    if-ne v5, v3, :cond_37

    .line 1176
    aget v2, v2, v3

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_38

    const/4 v12, 0x1

    goto :goto_3

    :cond_37
    if-nez v5, :cond_39

    :cond_38
    move v12, v15

    .line 1195
    :goto_3
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v2, v12}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1196
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    aput-object v2, v4, v15

    .line 1198
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 1186
    :cond_39
    const-string v2, "No service status received for CallWaitingInfo."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v12, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1203
    :cond_3a
    const-string v2, "Null response received for Query CW!"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v12, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1074
    :pswitch_b
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_40

    .line 1075
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_3b

    goto/16 :goto_5

    .line 1080
    :cond_3b
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3f

    .line 1081
    const-string v3, "Update CF error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/CallForwardStatusInfo;

    if-eqz v3, :cond_3c

    .line 1085
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallForwardStatusInfo;->getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    goto :goto_4

    :cond_3c
    move-object v3, v11

    :goto_4
    if-eqz v3, :cond_3d

    .line 1086
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v11

    :cond_3d
    if-eqz v11, :cond_3e

    .line 1087
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 1089
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1091
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-direct {v2, v12, v3, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1089
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1093
    :cond_3e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Update CF failure: ar = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " sipError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1096
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1095
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1099
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1100
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    return-void

    .line 1076
    :cond_40
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid response: ar = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " msgId = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1105
    :pswitch_c
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_46

    .line 1107
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_41

    .line 1108
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1111
    :cond_41
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_42

    .line 1112
    const-string v3, "Query CF error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_46

    .line 1114
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1115
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1114
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1118
    :cond_42
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_45

    .line 1119
    iget-object v2, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1122
    array-length v3, v2

    const/4 v4, 0x1

    if-ge v3, v4, :cond_43

    .line 1123
    const-string v2, "CallForwardInfo list has no elements!"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1124
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v12, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1130
    :cond_43
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1131
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsUtImpl;->toImsCallForwardInfo([Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v2

    .line 1141
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    if-nez v2, :cond_44

    .line 1134
    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v12, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1141
    :cond_44
    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    return-void

    .line 1146
    :cond_45
    const-string v2, "Null response received for Query CF!"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v12, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    :cond_46
    :goto_6
    return-void

    .line 834
    :cond_47
    :goto_7
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$mdumpw(Lorg/codeaurora/ims/ImsUtImpl;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
