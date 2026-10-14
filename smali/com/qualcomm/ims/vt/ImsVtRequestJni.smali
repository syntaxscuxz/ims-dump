.class public Lcom/qualcomm/ims/vt/ImsVtRequestJni;
.super Ljava/lang/Object;
.source "ImsVtRequestJni.java"

# interfaces
.implements Lcom/qualcomm/ims/vt/IImsMediaRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/ImsVtRequestJni$STREAM;
    }
.end annotation


# static fields
.field private static final DPL_INIT_FAILURE:I = -0x1

.field private static final DPL_INIT_MULTIPLE:I = -0x2

.field private static final DPL_INIT_SUCCESSFUL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ImsVtRequestJni"


# instance fields
.field private mCallBack:Lcom/qualcomm/ims/vt/ImsVtCallBackJni;

.field private final mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "imsmedia_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 75
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;

    invoke-direct {v0, p1, p0}, Lcom/qualcomm/ims/vt/ImsVtCallBackJni;-><init>(Lcom/qualcomm/ims/vt/ImsMedia;Lcom/qualcomm/ims/vt/ImsVtRequestJni;)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->mCallBack:Lcom/qualcomm/ims/vt/ImsVtCallBackJni;

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p0, p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->processResponseCallBack(III)V

    return-void
.end method

.method private static convertStream(I)Lcom/qualcomm/ims/vt/ImsVtRequestJni$STREAM;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 298
    sget-object p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni$STREAM;->PRIMARY:Lcom/qualcomm/ims/vt/ImsVtRequestJni$STREAM;

    return-object p0

    .line 296
    :cond_0
    sget-object p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni$STREAM;->ALT:Lcom/qualcomm/ims/vt/ImsVtRequestJni$STREAM;

    return-object p0

    .line 294
    :cond_1
    sget-object p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni$STREAM;->PRIMARY:Lcom/qualcomm/ims/vt/ImsVtRequestJni$STREAM;

    return-object p0
.end method

.method private static fromOrientation(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 303
    const-string p0, "ImsVtRequestJni"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    .line 307
    const-string p0, "ImsVtRequestJni"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeDeInit()V
.end method

.method private static native nativeDualVtAnswer(III)V
.end method

.method private static native nativeDualVtRequest(II)V
.end method

.method static native nativeGetDownscaledHeight()I
.end method

.method static native nativeGetDownscaledWidth()I
.end method

.method static native nativeGetNegotiatedFPS(I)I
.end method

.method static native nativeGetNegotiatedHeight(I)I
.end method

.method static native nativeGetNegotiatedWidth(I)I
.end method

.method static native nativeGetPeerHeight(I)I
.end method

.method static native nativeGetPeerWidth(I)I
.end method

.method static native nativeGetRecorderFrameRate(I)I
.end method

.method static native nativeGetRecordingSurface(I)Landroid/view/Surface;
.end method

.method static native nativeGetUIOrientationMode(I)I
.end method

.method static native nativeGetVideoQualityIndication(I)I
.end method

.method private static native nativeHandleRawFrame([B)V
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsVtCallBackJni;)V
.end method

.method private static native nativeRequestRtpDataUsage(I)I
.end method

.method private static native nativeSetCameraFacing(I)V
.end method

.method private static native nativeSetCameraInfo(IILcom/qualcomm/ims/vt/ImsVtRequestJni$STREAM;)V
.end method

.method private static native nativeSetDeviceOrientation(I)V
.end method

.method private static native nativeSetLocalRenderingParameters(II)I
.end method

.method private static native nativeSetSharedDisplayParameters(II)I
.end method

.method private static native nativeSetSurface(Landroid/view/Surface;I)I
.end method

.method private static native nativeSetVideoImageBuffer([III)I
.end method

.method private static native nativesetLocalRenderingDelay(I)I
.end method

.method private resetService()V
    .locals 1

    .line 86
    const-string v0, "resetService"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->mCallBack:Lcom/qualcomm/ims/vt/ImsVtCallBackJni;

    return-void
.end method

.method private static toStatus(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public deInit(I)V
    .locals 3

    const-string v0, "deInit exception: "

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deInit clientHandle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeDeInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->resetService()V

    .line 119
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->onVtServiceDisconnected()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 113
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->resetService()V

    .line 119
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->onVtServiceDisconnected()V

    .line 120
    throw p1
.end method

.method public dualVtAnswer(IIII)V
    .locals 1

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "dualVtAnswer mediaId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " direction="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " statuscode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 256
    :try_start_0
    invoke-static {p2, p3, p4}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeDualVtAnswer(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "dualVtAnswer exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public dualVtRequest(III)V
    .locals 1

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "dualVtRequest mediaId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " direction="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 243
    :try_start_0
    invoke-static {p2, p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeDualVtRequest(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 245
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "dualVtRequest exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public init(I)V
    .locals 3

    const-string v0, "init result= "

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init clientHandle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeInit()I

    move-result v1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->mCallBack:Lcom/qualcomm/ims/vt/ImsVtCallBackJni;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsVtCallBackJni;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 101
    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->toStatus(I)I

    move-result v1

    const/4 v2, 0x2

    .line 100
    invoke-virtual {v0, p1, v2, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->processResponseCallBack(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public isAlive()Z
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->mCallBack:Lcom/qualcomm/ims/vt/ImsVtCallBackJni;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public requestRtpDataUsage(II)V
    .locals 1

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "requestRtpDataUsage mediaId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 198
    :try_start_0
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeRequestRtpDataUsage(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "requestRtpDataUsage exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraInfo(IIII)V
    .locals 1

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setCameraInfo facing="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " stream="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 178
    :try_start_0
    invoke-static {p4}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->convertStream(I)Lcom/qualcomm/ims/vt/ImsVtRequestJni$STREAM;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeSetCameraInfo(IILcom/qualcomm/ims/vt/ImsVtRequestJni$STREAM;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setCameraInfo exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceOrientation(II)V
    .locals 1

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setDeviceOrientation orientation="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 127
    :try_start_0
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->fromOrientation(I)I

    move-result p1

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeSetDeviceOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setDeviceOrientation exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setFarEndSurface(ILandroid/view/Surface;I)V
    .locals 1

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setFarEndSurface surface="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " stream="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 188
    :try_start_0
    invoke-static {p2, p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeSetSurface(Landroid/view/Surface;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setFarEndSurface exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalRenderingDelay(II)V
    .locals 1

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setLocalRenderingDelay delay="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 231
    :try_start_0
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativesetLocalRenderingDelay(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setLocalRenderingDelay exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalRenderingParameters(III)V
    .locals 5

    const-string v0, "setLocalRenderingParameters status = "

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLocalRenderingParameters width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 208
    :try_start_0
    invoke-static {p2, p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeSetLocalRenderingParameters(II)I

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    if-ne p3, v4, :cond_1

    if-nez v1, :cond_2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    if-nez v1, :cond_0

    .line 219
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    const/4 p3, 0x6

    invoke-virtual {p2, p1, p3, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->processResponseCallBack(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setLocalRenderingParameters exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setSharedDisplayParameters(III)V
    .locals 5

    const-string v0, "setSharedDisplayParameters status = "

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSharedDisplayParameters width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 137
    :try_start_0
    invoke-static {p2, p3}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeSetSharedDisplayParameters(II)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    if-ne p3, v4, :cond_1

    if-nez v1, :cond_2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    if-nez v1, :cond_0

    .line 148
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    const/4 p3, 0x5

    invoke-virtual {p2, p1, p3, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->processResponseCallBack(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setSharedDisplayParameters exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoImageBuffer(I[III)V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVideoImageBuffer width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->log(Ljava/lang/String;)V

    .line 160
    :try_start_0
    invoke-static {p2, p3, p4}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->nativeSetVideoImageBuffer([III)I

    move-result p2

    .line 166
    iget-object p3, p0, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->mImsMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    const/4 p4, 0x4

    invoke-virtual {p3, p1, p4, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->processResponseCallBack(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setVideoImageBuffer exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVtRequestJni;->loge(Ljava/lang/String;)V

    return-void
.end method
