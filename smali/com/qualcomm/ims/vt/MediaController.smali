.class public Lcom/qualcomm/ims/vt/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
.implements Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;
.implements Lorg/codeaurora/ims/ICallListListener;
.implements Lorg/codeaurora/ims/QImsSessionBase$Listener;
.implements Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "VideoCall_MediaController"

.field private static sInstance:Lcom/qualcomm/ims/vt/MediaController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceOrientation:I

.field private mIsPauseImageMode:Z

.field private mIsPauseImageModeRequested:Z

.field private mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

.field private mMediaEventListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

.field private mNumberOfImsCallSessions:I

.field private mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

.field private mPendingOrientationRequest:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qualcomm/ims/vt/MediaController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetPauseImage(Lcom/qualcomm/ims/vt/MediaController;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    .line 48
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    .line 49
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageModeRequested:Z

    .line 50
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPendingOrientationRequest:Z

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mDeviceOrientation:I

    .line 54
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 56
    invoke-virtual {p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->setMediaListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V

    .line 57
    iget-object p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p1, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V

    return-void
.end method

.method private getCallType(I)I
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/16 p0, 0x1d

    return p0
.end method

.method public static getInstance()Lcom/qualcomm/ims/vt/MediaController;
    .locals 1

    .line 69
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;

    if-eqz v0, :cond_0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "getInstance sInstance= null"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/qualcomm/ims/vt/MediaController;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/vt/MediaController;-><init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    sput-object v0, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;

    return-void

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MediaController: Multiple initialization"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isMediaInitialized()Z
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->isMediaInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPauseImageState()Z
    .locals 0

    .line 270
    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 612
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 616
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1

    .line 620
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private maybeDeInitializeMedia(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1

    .line 516
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->isMediaInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    const-string v0, "maybeInitializeMedia: De-initializing media"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 520
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getPhoneId()I

    move-result p1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallTransmitStaticImage(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 524
    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Landroid/graphics/Bitmap;)V

    .line 526
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->deInit()V

    :cond_1
    return-void
.end method

.method private maybeInitializeMedia()V
    .locals 1

    .line 509
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->isMediaInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    const-string v0, "maybeInitializeMedia: Initializing media"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 511
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->init()V

    :cond_0
    return-void
.end method

.method private maybeOverrideCvoInfo(I)I
    .locals 2

    .line 137
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "qti_test_cvo_override"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "maybeOverrideCvoInfo: override value = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    return p0

    :cond_0
    return p1
.end method

.method private setPauseImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->setPreviewImage(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 241
    :goto_0
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageModeRequested:Z

    .line 242
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public answerDualVtRequest(Landroid/os/Message;ZII)V
    .locals 1

    .line 158
    const-string v0, "answerDualVtRequest"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qualcomm/ims/vt/ImsMedia;->answerDualVtRequest(Landroid/os/Message;ZII)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 78
    const-string v0, "dispose()"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/MediaController;->maybeDeInitializeMedia(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 80
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->setMediaListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V

    .line 81
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v1, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V

    .line 82
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->dispose()V

    .line 83
    iput-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 84
    sput-object v0, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;

    return-void
.end method

.method public dualVtRequest(Landroid/os/Message;II)V
    .locals 1

    .line 152
    const-string v0, "dualVtRequest"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->dualVtRequest(Landroid/os/Message;II)V

    return-void
.end method

.method public enableArMode(Ljava/lang/String;I)V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableArMode cameraId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->enableArMode(ZI)V

    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->isArEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/qualcomm/ims/vt/CameraUtil;->getCameraFacing(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/CameraUtil;->getCameraMountAngle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .line 105
    invoke-virtual {v0, v1, p0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->setCameraInfo(III)V

    :cond_1
    return-void
.end method

.method public getNegotiatedFps(I)I
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getNegotiatedFps(I)I

    move-result p0

    return p0
.end method

.method public onActive(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0

    return-void
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    .line 570
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/CallModify;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    :cond_0
    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V
    .locals 0

    .line 577
    check-cast p1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 578
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    :cond_0
    return-void
.end method

.method public onCameraConfigChanged(IIIILandroid/view/Surface;II)V
    .locals 0

    .line 276
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->isPauseImageState()Z

    move-result p0

    if-nez p0, :cond_0

    .line 277
    const-string p0, "received camera config changed when not in pause image mode"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    return-void

    .line 283
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    if-nez p0, :cond_1

    .line 285
    const-string p0, "onCameraConfigChanged: ImsVideoCallProvider is not available"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    return-void

    .line 289
    :cond_1
    new-instance p1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-direct {p1, p2, p3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(II)V

    .line 290
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onCameraConfigChanged in hide me mode, New capabilities = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0

    return-void
.end method

.method public onDataUsageChanged(ILorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 1

    .line 475
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 477
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDataUsageChanged dataUsage = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onCallDataUsageChanged(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    .line 483
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 485
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVideoCallDataUsageInfo(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    return-void

    .line 487
    :cond_0
    const-string p0, "onDataUsageChanged: call session is null"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    return-void

    .line 490
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onDataUsageChanged: Call session video provider is null. Received mediaId = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0

    return-void
.end method

.method public onDualVtSupportChanged(IZI)V
    .locals 1

    .line 364
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDualVtSupportChanged = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 369
    invoke-virtual {p0, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateDualVtSupport(ZI)V

    :cond_0
    return-void

    .line 372
    :cond_1
    const-string p0, "onDualVtSupportChanged null videoProvider"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    return-void
.end method

.method public onHold(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0

    return-void
.end method

.method public onIncomingDualVtRequest(III)V
    .locals 2

    .line 379
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 381
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 383
    sget v0, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    .line 384
    invoke-direct {p0, p3}, Lcom/qualcomm/ims/vt/MediaController;->getCallType(I)I

    move-result p0

    if-eqz p2, :cond_1

    .line 386
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getPendingModifyCall()Lorg/codeaurora/ims/CallModify;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 389
    sget v0, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    .line 390
    iget-object p0, p2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    goto :goto_0

    .line 392
    :cond_0
    const-string p2, "onIncomingDualVtRequest pendingModify is null treating as downgrade request"

    invoke-static {p2}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 396
    :cond_1
    :goto_0
    new-instance p2, Lorg/codeaurora/ims/CallDetails;

    const/16 p3, 0xb

    const/4 v1, 0x0

    invoke-direct {p2, p0, p3, v1}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 398
    new-instance p0, Lorg/codeaurora/ims/CallModify;

    .line 399
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result p3

    invoke-direct {p0, p2, p3, v0}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;II)V

    .line 400
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    return-void

    .line 402
    :cond_2
    const-string p0, "onIncomingDualVtRequest null call session"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onMediaDeinitialized()V
    .locals 1

    const/4 v0, 0x0

    .line 599
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPendingOrientationRequest:Z

    const/4 v0, -0x1

    .line 600
    iput v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mDeviceOrientation:I

    return-void
.end method

.method public onMediaInitialized()V
    .locals 2

    .line 605
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPendingOrientationRequest:Z

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mDeviceOrientation:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendCvoInfo(I)V

    const/4 v0, 0x0

    .line 607
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPendingOrientationRequest:Z

    :cond_0
    return-void
.end method

.method public onOrientationModeChanged(II)V
    .locals 1

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onOrientationModeChanged to orientation mode- "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 339
    invoke-virtual {p0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onUpdateOrientationMode(I)V

    return-void

    .line 341
    :cond_0
    const-string p0, "Call session video provider is null. Can\'t propagate onOrientationModeChanged event"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    return-void
.end method

.method public onPeerResolutionChanged(IIII)V
    .locals 1

    .line 423
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onPeerResolutionChangeEvent width="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p0

    invoke-virtual {p0, p1, p4}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaIdAndStream(II)Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 428
    invoke-interface {p0, p2, p3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;->onUpdatePeerDimensions(II)V

    return-void

    .line 430
    :cond_0
    const-string p0, "Active or Outgoing or Incoming call session video provider is null. Can\'t propagate OnPeerResolutionChanged event"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerStateChanged(III)V
    .locals 1

    .line 439
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onPlayerStateChanged state = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaIdAndStream(II)Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 449
    :goto_0
    invoke-interface {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;->handleCallSessionEvent(I)V

    return-void

    .line 451
    :cond_1
    const-string p0, "All call session video providers are null. Can\'t propagate onPlayerStateChanged event"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    return-void
.end method

.method public onRecordingDisabled(II)V
    .locals 0

    .line 322
    const-string p0, "onRecordingDisabled"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onRecordingDisabled()V

    return-void

    .line 328
    :cond_0
    const-string p0, "Call session video provider is null. Can\'t propagate onRecordingDisabled event"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    return-void
.end method

.method public onRecordingEnabled(II)V
    .locals 0

    .line 309
    const-string p0, "onRecordingEnabled"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onRecordingEnabled()V

    return-void

    .line 315
    :cond_0
    const-string p0, "Call session video provider is null. Can\'t propagate  onRecordingEnabled event"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    return-void
.end method

.method public onRecordingSurfaceChanged(ILandroid/view/Surface;II)V
    .locals 1

    .line 349
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onRecordingSurfaceChanged to surface- "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " width- "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height- "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 354
    invoke-virtual {p0, p2, p3, p4}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onUpdateRecordingSurface(Landroid/view/Surface;II)V

    return-void

    .line 356
    :cond_0
    const-string p0, "Call session video provider is null. Can\'t propagate onRecordingSurfaceChanged event"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSessionAdded callSession="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " no:of call sessions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 500
    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    .line 501
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 503
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    :cond_0
    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0

    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSessionRemoved callSession="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " no:of call sessions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 534
    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    if-nez v0, :cond_0

    .line 535
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onCallSessionRemoved: Unknown session has been removed, Session="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 538
    iput v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    .line 539
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->removeListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 540
    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    if-nez v0, :cond_1

    .line 541
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->maybeDeInitializeMedia(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    :cond_1
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0

    return-void
.end method

.method public onSetPreviewImage(Z)V
    .locals 2

    const-string v0, "onSetPreviewImage mIsPauseImageModeRequested = "

    if-nez p1, :cond_0

    .line 248
    const-string p0, "onSetPreviewImage failed"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    return-void

    .line 252
    :cond_0
    monitor-enter p0

    .line 253
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageModeRequested:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsPauseImageMode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " setPreviewImageStatus = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 256
    iget-boolean p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageModeRequested:Z

    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    if-ne p1, v0, :cond_1

    .line 257
    monitor-exit p0

    return-void

    .line 260
    :cond_1
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    if-eqz p1, :cond_2

    .line 262
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    .line 266
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    .line 563
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/CallModify;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    :cond_0
    return-void
.end method

.method public onUpdateRecorderFrameRate(III)V
    .locals 0

    .line 296
    const-string p0, "onUpdateRecorderFrameRate"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 300
    invoke-virtual {p0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onUpdateRecorderFrameRate(I)V

    return-void

    .line 302
    :cond_0
    const-string p0, "Call session video provider is null. Can\'t propagate onUpdateRecorderFrameRate event"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoQualityEvent(II)V
    .locals 0

    .line 461
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 463
    invoke-virtual {p0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onUpdateVideoQuality(I)V

    return-void

    .line 465
    :cond_0
    const-string p0, "Active call session video provider is null. Can\'t propagate OnVideoQualityChanged event"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    return-void
.end method

.method public requestCallDataUsage(II)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestCallDataUsage: mediaID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->requestCallDataUsage(II)V

    return-void
.end method

.method public setDeviceOrientation(II)V
    .locals 0

    .line 124
    invoke-static {p1}, Lcom/qualcomm/ims/vt/CvoUtil;->toOrientation(I)I

    move-result p1

    .line 125
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->maybeOverrideCvoInfo(I)I

    move-result p1

    iput p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mDeviceOrientation:I

    .line 126
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->isMediaInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    iget p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mDeviceOrientation:I

    invoke-virtual {p1, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->sendCvoInfo(I)V

    return-void

    .line 129
    :cond_0
    const-string p1, "setDeviceOrientation: init not completed"

    invoke-static {p1}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mPendingOrientationRequest:Z

    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;I)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->setSurface(Landroid/view/Surface;I)V

    return-void
.end method

.method public setLocalRenderingDelay(I)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLocalRenderingDelay"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->setLocalRenderingDelay(I)V

    return-void
.end method

.method public setMediaEventListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMediaEventListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    return-void
.end method

.method public setPauseImage(Ljava/lang/String;I)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->cancel(Z)Z

    move-result v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPauseImage cancelling old pauseImageTask isCancelled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 227
    move-object p2, p1

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Landroid/graphics/Bitmap;)V

    return-void

    .line 231
    :cond_1
    new-instance v0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v1, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->getNegotiatedWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 232
    invoke-virtual {v2, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->getNegotiatedHeight(I)I

    move-result p2

    invoke-direct {v0, p0, v1, p2}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;-><init>(Lcom/qualcomm/ims/vt/MediaController;II)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    .line 233
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setSharedDisplayParams(III)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSharedDisplayParams width = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsMedia;->setSharedDisplayParams(III)V

    return-void
.end method

.method public stopScreenShare(I)V
    .locals 1

    .line 97
    const-string v0, "stopScreenShare"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->stopScreenShare(I)V

    return-void
.end method
