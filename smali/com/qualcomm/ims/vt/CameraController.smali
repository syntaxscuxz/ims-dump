.class public Lcom/qualcomm/ims/vt/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
.implements Lorg/codeaurora/ims/QImsSessionBase$Listener;
.implements Lcom/qualcomm/ims/vt/Camera$Listener;
.implements Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;
    }
.end annotation


# static fields
.field private static final CAMERA_OPERATION_RETRY_DELAY:I = 0x64

.field private static TAG:Ljava/lang/String; = "CameraController"

.field private static sInstance:Lcom/qualcomm/ims/vt/CameraController;


# instance fields
.field private mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mCameras:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMedia:Lcom/qualcomm/ims/vt/ImsMedia;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMedia(Lcom/qualcomm/ims/vt/CameraController;)Lcom/qualcomm/ims/vt/ImsMedia;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStreamFromCamera(Lcom/qualcomm/ims/vt/CameraController;Lcom/qualcomm/ims/vt/Camera;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getStreamFromCamera(Lcom/qualcomm/ims/vt/Camera;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendCameraCapabilities(Lcom/qualcomm/ims/vt/CameraController;Landroid/telecom/VideoProfile$CameraCapabilities;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendCameraStatus(Lcom/qualcomm/ims/vt/CameraController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 364
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mContext:Landroid/content/Context;

    .line 365
    iput-object p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 366
    invoke-virtual {p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    .line 367
    iget-object p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V

    .line 368
    invoke-static {p1}, Lcom/qualcomm/ims/vt/CameraManager;->init(Landroid/content/Context;)V

    .line 369
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkMediaId(Ljava/lang/String;I)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 811
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mediaId mismatch with mCameraOwner"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 492
    const-string v0, "close"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 493
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 494
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/CameraController;->doClose(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doClose(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 2

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doClose: Session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->removeOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 593
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p1

    .line 594
    iget-object p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-nez p2, :cond_0

    .line 595
    invoke-static {p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mclose(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V

    return-void

    .line 597
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "doClose: Not closing camera="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " another session still requires it, session="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 599
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 597
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private doOpen(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doOpen cameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    .line 390
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->setOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 391
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p3

    .line 392
    invoke-direct {p0, p2, p3}, Lcom/qualcomm/ims/vt/CameraController;->maybeUpdateRecordingStateForNewSession(Lorg/codeaurora/ims/ImsCallSessionImpl;Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V

    .line 393
    invoke-static {p3, p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mopen(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;Ljava/lang/String;)V

    return-void
.end method

.method private getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;-><init>(Lcom/qualcomm/ims/vt/CameraController;)V

    .line 682
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/qualcomm/ims/vt/CameraController;
    .locals 2

    .line 450
    sget-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    if-eqz v0, :cond_0

    return-object v0

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CameraController: Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 723
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toSimpleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStreamFromCamera(Lcom/qualcomm/ims/vt/Camera;)I
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 403
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    invoke-static {v3}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mgetCamera2(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Lcom/qualcomm/ims/vt/Camera;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 408
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getStreamFromCamera camera: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public static init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)Lcom/qualcomm/ims/vt/CameraController;
    .locals 1

    .line 429
    sget-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lcom/qualcomm/ims/vt/CameraController;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/vt/CameraController;-><init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    sput-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    return-object v0

    .line 432
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CameraController: Multiple initialization"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private maybeUpdateRecordingStateForNewSession(Lorg/codeaurora/ims/ImsCallSessionImpl;Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 419
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isSessionConnecting(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 420
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoTxEnabled(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 419
    :goto_1
    invoke-static {p2, p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mupdateNeedWaitForStartRecording(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private releaseCurrentOwner()V
    .locals 2

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "releaseCurrentOwner: Session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->removeListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    :cond_0
    return-void
.end method

.method private removeOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeOwner: Session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    return-void

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeOwner: The session is not the correct owner. cameraOwner="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 572
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private sendCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;I)V
    .locals 2

    if-eqz p1, :cond_2

    .line 704
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 709
    :cond_0
    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getVideoCallProvider(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;

    move-result-object p2

    if-nez p2, :cond_1

    .line 711
    const-string p1, "sendCameraCapabilities: ImsVideoCallProvider is not available (null)."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 715
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendCameraCapabilities: New capabilities= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    invoke-interface {p2, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    return-void

    .line 705
    :cond_2
    :goto_0
    const-string p1, "sendCameraCapabilities: Camera capabilities or camera owner is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private sendCameraStatus(II)V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 744
    invoke-direct {p0, v0, p1, p2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;II)V

    :cond_0
    return-void
.end method

.method private sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;II)V
    .locals 1

    if-nez p1, :cond_0

    .line 728
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "sendCameraStatus: session is null. CameraStatus="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 732
    :cond_0
    invoke-virtual {p1, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getVideoCallProvider(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;

    move-result-object p2

    if-nez p2, :cond_1

    .line 734
    const-string p1, "sendCameraStatus: ImsVideoCallProvider is not available (null)."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 738
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "sendCameraStatus: Notifying Session="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 739
    invoke-interface {p2, p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;->sendCameraStatus(Z)V

    return-void
.end method

.method private setOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOwner: Session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    .line 559
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 560
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    return-void

    .line 562
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOwner: The session is already registered as camera owner, session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close: stream="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/CameraController;->doClose(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 438
    const-string v0, "dispose()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    .line 440
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V

    const/4 p0, 0x0

    .line 441
    sput-object p0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    return-void
.end method

.method getCameraCapabilities(I)Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 4

    .line 536
    const-string v0, "getCameraCapabilities: Exception: "

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object v2

    .line 537
    invoke-static {v2}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mgetCameraCapabilities(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    .line 544
    invoke-direct {p0, v3, p1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 545
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 545
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :catch_1
    move-exception v2

    .line 539
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 540
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getPreviewSurface(I)Landroid/view/Surface;
    .locals 0

    .line 652
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p0

    .line 653
    invoke-static {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mgetPreviewSurface(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getRecordingSurface(I)Landroid/view/Surface;
    .locals 0

    .line 646
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p0

    .line 647
    invoke-static {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mgetRecordingSurface(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 579
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onActive(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0

    return-void
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V
    .locals 0

    return-void
.end method

.method public onCameraConfigChanged(IIIILandroid/view/Surface;II)V
    .locals 1

    .line 662
    const-string v0, "onCameraConfigChanged"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 664
    :try_start_0
    invoke-direct {p0, p7}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 666
    invoke-static/range {p1 .. p7}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mcameraConfigChanged(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;IIILandroid/view/Surface;II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const/4 p2, 0x3

    .line 671
    invoke-direct {p0, p2, p7}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 672
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onCameraConfigChanged: Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 672
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 669
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-direct {p0, p1, p7}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2

    .line 792
    check-cast p1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClosed: Session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    return-void
.end method

.method public onConfigureFailed(Lcom/qualcomm/ims/vt/Camera;Z)V
    .locals 2

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigureFailed: cameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 759
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getStreamFromCamera(Lcom/qualcomm/ims/vt/Camera;)I

    move-result p1

    .line 760
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/ims/vt/CameraController$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/qualcomm/ims/vt/CameraController$1;-><init>(Lcom/qualcomm/ims/vt/CameraController;Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;I)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/qualcomm/ims/vt/Camera;I)V
    .locals 2

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraFailed: cameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera;->getId()Ljava/lang/String;

    .line 752
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getStreamFromCamera(Lcom/qualcomm/ims/vt/Camera;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    return-void
.end method

.method public onHold(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0

    return-void
.end method

.method public onMediaDeinitialized()V
    .locals 1

    .line 627
    const-string v0, "onMediaDeinitialized. closing Camera"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 629
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 632
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    .line 633
    invoke-static {v0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mdeInit(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMediaInitialized()V
    .locals 1

    .line 639
    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    .line 640
    invoke-static {v0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$monMediaInitialized(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRecordingDisabled(II)V
    .locals 1

    .line 619
    const-string v0, "onRecordingDisabled"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 621
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p0

    .line 622
    invoke-static {p0}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mrecordingDisabled(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V

    return-void
.end method

.method public onRecordingEnabled(II)V
    .locals 1

    .line 604
    const-string v0, "onRecordingEnabled"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 606
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p1

    .line 608
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mrecordingEnabled(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    .line 612
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 613
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onRecordingEnabled: Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 613
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 610
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    :goto_0
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    return-void
.end method

.method public onUpdateRecorderFrameRate(III)V
    .locals 3

    .line 689
    const-string v0, "onUpdateRecorderFrameRate: Exception "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpdateRecorderFrameRate, rate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    const-string v1, "onUpdateRecorderFrameRate"

    invoke-direct {p0, v1, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 691
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p1

    .line 693
    :try_start_0
    invoke-static {p1, p2}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$mupdateRecorderFrameRate(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 698
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 699
    invoke-direct {p0, p1, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 695
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    :goto_0
    return-void
.end method

.method public open(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 3

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "open: cameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 471
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/CameraController;->doOpen(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 476
    invoke-direct {p0, p2, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 477
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "open: Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open: Failed to open, cameraId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Exception="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-direct {p0, p2, p1, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;II)V

    :goto_0
    return-void

    .line 467
    :cond_0
    const-string p1, "open: Invalid camera id. Camera ID is null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CameraController: Invalid camera id."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPreviewSurface(Landroid/view/Surface;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPreviewSurface, surface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "setPreviewSurface: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a camera owner. Camera owner="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 509
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 508
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 513
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->isSurfaceValid(Landroid/view/Surface;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 514
    const-string p1, "setPreviewSurface:  Invalid surface"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 519
    :cond_1
    :try_start_0
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p2

    .line 520
    invoke-static {p2, p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$msetPreviewSurface(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    .line 524
    invoke-direct {p0, p2, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    .line 525
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setPreviewSurface: Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 522
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(II)V

    :goto_0
    return-void
.end method

.method public setZoom(FI)V
    .locals 0

    .line 530
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getCamera(I)Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;

    move-result-object p0

    .line 531
    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;->-$$Nest$msetZoom(Lcom/qualcomm/ims/vt/CameraController$CameraWrapper;F)V

    return-void
.end method
