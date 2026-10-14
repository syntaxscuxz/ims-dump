.class Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;
.super Landroid/os/Handler;
.source "ImsMultiEndpointImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsMultiEndpointImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsMultiEndpointImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;-><init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Landroid/os/Looper;)V
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

    .line 64
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;->this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message received: what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsMultiEndpointImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 73
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown message = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 79
    :cond_0
    const-string p1, "EVENT_CAPABILITIES_CHANGED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;->this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->-$$Nest$mupdateCapabilities(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void

    .line 75
    :cond_1
    const-string p1, "EVENT_REFRESH_VICE_INFO"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;->this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->-$$Nest$mhandleRefreshViceInfo(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method
