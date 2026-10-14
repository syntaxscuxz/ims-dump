.class Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;
.super Landroid/os/Handler;
.source "ImsMultiIdentityImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsMultiIdentityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsMultiIdentityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/Looper;)V
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

    .line 75
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 76
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message received: what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 84
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown message = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->-$$Nest$monMultiIdentityVirtualLineInfoResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    .line 95
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->-$$Nest$monMultiIdentityInfoPendingResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    .line 92
    :cond_2
    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->-$$Nest$monMultiIdentityInfoPendingIndication(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V

    return-void

    .line 89
    :cond_3
    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->-$$Nest$monMultiIdentityRegistrationStatusChange(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    .line 86
    :cond_4
    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->-$$Nest$monRegisterMultiIdentityLinesResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method
