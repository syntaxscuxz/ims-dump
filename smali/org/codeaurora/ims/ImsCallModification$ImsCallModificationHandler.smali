.class Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;
.super Landroid/os/Handler;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsCallModificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallModification;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 814
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    .line 815
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallModification;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 818
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    .line 819
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private clearMultiTaskRetryCount()I
    .locals 2

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clearing MultiTaskRetryCount from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;I)V

    return v0
.end method

.method private onAvpRetry(Landroid/os/Message;)V
    .locals 1

    .line 930
    const-string v0, "EVENT_AVP_UPGRADE received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz p1, :cond_1

    .line 932
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 934
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 936
    const-string p1, "AVP Retry error when Voice call was upgraded to video call"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 944
    :cond_0
    const-string p1, "AVP Retry error when Video call was dialed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 948
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 949
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    return-void
.end method

.method private onModifyCallDone(Landroid/os/Message;)V
    .locals 3

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onModifyCallDone for event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v0, :cond_1

    .line 848
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 849
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v2

    iget-object v2, v2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mupdatePreviousVTCallType(Lorg/codeaurora/ims/ImsCallModification;I)V

    goto :goto_0

    .line 851
    :cond_0
    const-string v1, "videocall error during modifyCall"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    :goto_0
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 858
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    iget-object v0, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 862
    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 866
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->isOutgoingRttVtUpgradeInProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmRttVtSm(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsCallModification$RttVtStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 868
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmPendingMtRttVtModify(Lorg/codeaurora/ims/ImsCallModification;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 869
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmPendingMtRttVtModify(Lorg/codeaurora/ims/ImsCallModification;Z)V

    .line 871
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 872
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    return-void
.end method

.method private onVideoPauseDone(Landroid/os/Message;)V
    .locals 6

    .line 877
    const-string v0, "EVENT_VIDEO_PAUSE_DONE received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz p1, :cond_4

    .line 880
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 893
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 883
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 884
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v0

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmIsLocallyPaused(Lorg/codeaurora/ims/ImsCallModification;Z)V

    .line 887
    :cond_1
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 888
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 889
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    return-void

    .line 893
    :cond_2
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mshouldRetryVideoPause(Lorg/codeaurora/ims/ImsCallModification;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 894
    const-string p1, "Error during video pause so retry"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const v0, 0x453b8000    # 3000.0f

    mul-float/2addr p1, v0

    float-to-double v2, p1

    const-wide v4, 0x407f400000000000L    # 500.0

    add-double/2addr v2, v4

    double-to-int p1, v2

    .line 897
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onVideoPauseDone delay="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;I)V

    return-void

    .line 903
    :cond_3
    const-string p1, "Video Pause retry limit reached."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 905
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 906
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    return-void

    .line 910
    :cond_4
    const-string p1, "Error EVENT_VIDEO_PAUSE_DONE ar is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private onVideoPauseRetry()V
    .locals 2

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$PauseState;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v0, v1, :cond_1

    .line 918
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 919
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v0

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mcreateAndSendMultiTaskRequest(Lorg/codeaurora/ims/ImsCallModification;I)V

    :cond_0
    return-void

    .line 922
    :cond_1
    const-string v0, "User pressed home/resume during retry sending new multitask request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 924
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 925
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 824
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 833
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseRetry()V

    return-void

    .line 830
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseDone(Landroid/os/Message;)V

    return-void

    .line 827
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onModifyCallDone(Landroid/os/Message;)V

    return-void

    .line 836
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onAvpRetry(Landroid/os/Message;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
