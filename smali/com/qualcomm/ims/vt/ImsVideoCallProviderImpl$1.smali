.class Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;
.super Landroid/os/Handler;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Looper;)V
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

    .line 80
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message received: what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->-$$Nest$mlog(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Ljava/lang/String;)V

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 92
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown message = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->-$$Nest$mlog(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->-$$Nest$mhandleDataUsagePoll(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V

    return-void

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->-$$Nest$mhandleSessionModifyConfirmDone(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V

    return-void

    .line 85
    :cond_2
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->-$$Nest$mhandleSessionModifyDone(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V

    return-void
.end method
