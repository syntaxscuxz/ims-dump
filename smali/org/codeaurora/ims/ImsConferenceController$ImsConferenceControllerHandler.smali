.class Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;
.super Landroid/os/Handler;
.source "ImsConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsConferenceControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConferenceController;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConferenceController;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 493
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;-><init>(Lorg/codeaurora/ims/ImsConferenceController;Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConferenceController;Landroid/os/Looper;)V
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

    .line 496
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    .line 497
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 502
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message received: what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mlogi(Lorg/codeaurora/ims/ImsConferenceController;Ljava/lang/String;)V

    .line 505
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 530
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown message = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mlogi(Lorg/codeaurora/ims/ImsConferenceController;Ljava/lang/String;)V

    return-void

    .line 526
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 527
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mhandleAbortConferenceResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    .line 522
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 523
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mhandleHangupResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    .line 518
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 519
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mhandleResumeResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    .line 515
    :pswitch_3
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mhandleConferenceCompleted(Lorg/codeaurora/ims/ImsConferenceController;)V

    return-void

    .line 511
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 512
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->handleRefreshConfInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    .line 507
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 508
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mhandleConferenceResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
