.class final Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
.super Ljava/lang/Object;
.source "CrsCrbtControllerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/CrsCrbtControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CrsCrbtDeathRecipient"
.end annotation


# instance fields
.field mListener:Lorg/codeaurora/ims/internal/ICrsCrbtListener;

.field mSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field final synthetic this$0:Lorg/codeaurora/ims/CrsCrbtControllerImpl;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/CrsCrbtControllerImpl;Lorg/codeaurora/ims/internal/ICrsCrbtListener;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->this$0:Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->mListener:Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    .line 32
    iput-object p3, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->mSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Client died: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->close()V

    return-void
.end method

.method public close()V
    .locals 3

    .line 39
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->mListener:Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    invoke-interface {v0}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->this$0:Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->-$$Nest$fgetmClients(Lorg/codeaurora/ims/CrsCrbtControllerImpl;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->this$0:Lorg/codeaurora/ims/CrsCrbtControllerImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->-$$Nest$fgetmClients(Lorg/codeaurora/ims/CrsCrbtControllerImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->mListener:Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    invoke-interface {v2}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->mSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    .line 46
    :cond_0
    iput-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->mListener:Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    .line 47
    iput-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->mSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-void

    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public linkToDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->mListener:Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    invoke-interface {v0}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Client{,ICrsCrbtListener:"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->mListener:Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",ImsCallSessionImpl:"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->mSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
