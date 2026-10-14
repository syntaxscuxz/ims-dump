.class final Lcom/qualcomm/ims/vt/ImsVtRequestAidl$ImsVtServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsVtRequestAidl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/ImsVtRequestAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImsVtServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/ImsVtRequestAidl;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/ImsVtRequestAidl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl$ImsVtServiceDeathRecipient;->this$0:Lcom/qualcomm/ims/vt/ImsVtRequestAidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl$ImsVtServiceDeathRecipient;->this$0:Lcom/qualcomm/ims/vt/ImsVtRequestAidl;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->-$$Nest$mresetService(Lcom/qualcomm/ims/vt/ImsVtRequestAidl;)V

    .line 79
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestAidl$ImsVtServiceDeathRecipient;->this$0:Lcom/qualcomm/ims/vt/ImsVtRequestAidl;

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestAidl;->-$$Nest$fgetmImsMedia(Lcom/qualcomm/ims/vt/ImsVtRequestAidl;)Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->onVtServiceDisconnected()V

    return-void
.end method
