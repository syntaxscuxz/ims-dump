.class Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;
.super Landroid/os/Handler;
.source "ImsUssdSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsUssdSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsSessionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 145
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message received: what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->-$$Nest$mdoClose(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    return-void

    .line 165
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->-$$Nest$monUssdMessageReceived(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    .line 162
    :cond_2
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->-$$Nest$monCancelUssd(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    .line 159
    :cond_3
    iget-object p0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->-$$Nest$mOnUssdSentResponse(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method
