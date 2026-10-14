.class public Lcom/qualcomm/ims/vt/ImsVideoCallProvider;
.super Lorg/codeaurora/ims/VideoCallProviderBase;
.source "ImsVideoCallProvider.java"

# interfaces
.implements Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;


# static fields
.field private static final DBG:Z = true

.field private static final STREAM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsVideoCallProvider2"


# instance fields
.field private mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mCamera:Lcom/qualcomm/ims/vt/CameraController;

.field private mContext:Landroid/content/Context;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mIsOpen:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/internal/IVideoCallProviderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMedia:Lcom/qualcomm/ims/vt/MediaController;

.field mRequestProfile:Landroid/telecom/VideoProfile;

.field mResponseProfile:Landroid/telecom/VideoProfile;


# direct methods
.method public static synthetic $r8$lambda$ntSnlNjfn2D4QbpQL7WTqpBmk-o(Lcom/qualcomm/ims/vt/ImsVideoCallProvider;ILorg/codeaurora/ims/internal/IVideoCallProviderListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->lambda$handleCallSessionEvent$2(ILorg/codeaurora/ims/internal/IVideoCallProviderListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-APQWV9Kwf8LSxHjE7QHd5GJFc(Lcom/qualcomm/ims/vt/ImsVideoCallProvider;IILorg/codeaurora/ims/internal/IVideoCallProviderListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->lambda$onUpdatePeerDimensions$1(IILorg/codeaurora/ims/internal/IVideoCallProviderListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xmUJ4YVm0NZ9iGyddU7pEIv84vo(Lcom/qualcomm/ims/vt/ImsVideoCallProvider;Landroid/telecom/VideoProfile$CameraCapabilities;Lorg/codeaurora/ims/internal/IVideoCallProviderListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->lambda$changeCameraCapabilities$0(Landroid/telecom/VideoProfile$CameraCapabilities;Lorg/codeaurora/ims/internal/IVideoCallProviderListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-virtual {p3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/codeaurora/ims/VideoCallProviderBase;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mListeners:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsVideoCallProvider instance created callSession="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " imsCallMod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 65
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    .line 66
    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    .line 67
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mIsOpen:Z

    .line 69
    iput-object p3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isSessionValid()Z
    .locals 3

    .line 198
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session is closed."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->loge(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private synthetic lambda$changeCameraCapabilities$0(Landroid/telecom/VideoProfile$CameraCapabilities;Lorg/codeaurora/ims/internal/IVideoCallProviderListener;)V
    .locals 0

    .line 146
    :try_start_0
    invoke-interface {p2, p1}, Lorg/codeaurora/ims/internal/IVideoCallProviderListener;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 148
    :catch_0
    const-string p1, "changeCameraCapabilities exception"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleCallSessionEvent$2(ILorg/codeaurora/ims/internal/IVideoCallProviderListener;)V
    .locals 0

    .line 180
    :try_start_0
    invoke-interface {p2, p1}, Lorg/codeaurora/ims/internal/IVideoCallProviderListener;->handleCallSessionEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 182
    :catchall_0
    const-string p1, "handleCallSessionEvent exception"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onUpdatePeerDimensions$1(IILorg/codeaurora/ims/internal/IVideoCallProviderListener;)V
    .locals 0

    .line 159
    :try_start_0
    invoke-interface {p3, p1, p2}, Lorg/codeaurora/ims/internal/IVideoCallProviderListener;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 161
    :catch_0
    const-string p1, "onUpdatePeerDimensions exception"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 206
    const-string v0, "VideoCall_ImsVideoCallProvider2"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 210
    const-string v0, "VideoCall_ImsVideoCallProvider2"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda0;-><init>(Lcom/qualcomm/ims/vt/ImsVideoCallProvider;Landroid/telecom/VideoProfile$CameraCapabilities;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object p0
.end method

.method public handleCallSessionEvent(I)V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleCallSessionEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda1;-><init>(Lcom/qualcomm/ims/vt/ImsVideoCallProvider;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method isOpen()Z
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " isOpen "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mIsOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 74
    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mIsOpen:Z

    return p0
.end method

.method public onRemoveListener(Lorg/codeaurora/ims/internal/IVideoCallProviderListener;)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRemoveListener, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 132
    const-string v0, "onRequestCameraCapabilities"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/CameraController;->getCameraCapabilities(I)Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    return-void

    .line 139
    :cond_1
    const-string v0, "Error onRequestCameraCapabilities camera capabilities is null"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetCamera, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    invoke-virtual {v0, p1, p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->open(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    return-void

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetDisplaySurface, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/MediaController;->setDisplaySurface(Landroid/view/Surface;I)V

    return-void
.end method

.method public onSetListener(Lorg/codeaurora/ims/internal/IVideoCallProviderListener;)V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetListener, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetPreviewSurface, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->setPreviewSurface(Landroid/view/Surface;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    return-void
.end method

.method public onUpdatePeerDimensions(II)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdatePeerDimensions width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider$$ExternalSyntheticLambda2;-><init>(Lcom/qualcomm/ims/vt/ImsVideoCallProvider;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public sendCameraStatus(Z)V
    .locals 1

    .line 168
    const-string v0, "sendCameraStatus"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    .line 172
    :goto_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;->handleCallSessionEvent(I)V

    return-void
.end method
