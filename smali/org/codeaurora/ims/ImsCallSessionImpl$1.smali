.class Lorg/codeaurora/ims/ImsCallSessionImpl$1;
.super Landroid/os/Handler;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;->startAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private numberOfAlerts:I

.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4059
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 4060
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 4062
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4074
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    return-void

    .line 4064
    :cond_1
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    :goto_0
    return-void

    .line 4067
    :cond_2
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->removeMessages(I)V

    const-wide/32 v2, 0x1b7740

    .line 4068
    invoke-virtual {p0, v0, v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->sendEmptyMessageDelayed(IJ)Z

    .line 4069
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$mstartBeepForAlert(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 4070
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    return-void
.end method
