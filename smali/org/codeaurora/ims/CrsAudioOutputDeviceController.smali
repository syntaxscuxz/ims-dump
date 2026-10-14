.class public Lorg/codeaurora/ims/CrsAudioOutputDeviceController;
.super Ljava/lang/Object;
.source "CrsAudioOutputDeviceController.java"


# static fields
.field private static final CRS_AUDIO_OUTPUT_DEVICE_PARAM:Ljava/lang/String; = "crs_output_device="

.field private static final QUERY_DEVICE_DELAY_MS:I = 0x190

.field private static final TAG:Ljava/lang/String; = "CrsAudioOutputDeviceController"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mDeviceChangeListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

.field private mDeviceNotificationRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIsListenerRegistered:Z

.field private mIsRingtoneMode:Z

.field private mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioManager(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentCrsCall(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceNotificationRunnable(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceNotificationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRingtoneMode(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsRingtoneMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDeviceNotificationRunnable(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceNotificationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRingtoneMode(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsRingtoneMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCommunicationDeviceChanged(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;Landroid/media/AudioDeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->handleCommunicationDeviceChanged(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyAudioHalDeviceChange(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;Landroid/media/AudioDeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->notifyAudioHalDeviceChange(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleDelayedDeviceNotification(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->scheduleDelayedDeviceNotification()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsRingtoneMode:Z

    if-eqz p1, :cond_0

    .line 73
    iput-object p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mContext:Landroid/content/Context;

    .line 74
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    .line 75
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 77
    iput-boolean v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsListenerRegistered:Z

    .line 78
    iput-object p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceNotificationRunnable:Ljava/lang/Runnable;

    .line 79
    const-string p1, "CrsAudioOutputDeviceController created"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    const-string p0, "Context cannot be null"

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private cancelDelayedDeviceNotification()V
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceNotificationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceNotificationRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private cleanupFailedRegistration()V
    .locals 4

    .line 183
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->cancelDelayedDeviceNotification()V

    .line 186
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 188
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error removing mode listener during cleanup: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    :goto_0
    iput-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceChangeListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 197
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->removeOnCommunicationDeviceChangedListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error removing device listener during cleanup: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    :goto_1
    iput-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceChangeListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    :cond_1
    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsListenerRegistered:Z

    .line 205
    iput-boolean v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsRingtoneMode:Z

    return-void
.end method

.method private handleCommunicationDeviceChanged(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    if-nez p1, :cond_0

    .line 337
    const-string p1, "handleCommunicationDeviceChanged: device is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processing device change: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-nez v0, :cond_1

    .line 346
    const-string p1, "No active CRS call, ignoring device change"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceNotificationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 352
    const-string v0, "Canceling delayed notification (callback received)"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->cancelDelayedDeviceNotification()V

    .line 356
    :cond_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->notifyAudioHalDeviceChange(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method private mapDeviceTypeToString(I)Ljava/lang/String;
    .locals 0

    .line 390
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private notifyAudioHalDeviceChange(Landroid/media/AudioDeviceInfo;)V
    .locals 3

    const-string v0, "Notifying audio HAL: "

    if-eqz p1, :cond_1

    .line 366
    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mapDeviceTypeToString(I)Ljava/lang/String;

    move-result-object p1

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "crs_output_device="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 375
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set audio parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 367
    :cond_1
    :goto_0
    const-string p1, "Cannot notify HAL: device or AudioManager is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private onCallEnded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCallEnded: callId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->dispose()V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerAudioDeviceListener()V
    .locals 4

    const-string v0, "Failed to register device listener, cleaning up: "

    .line 217
    iget-boolean v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsListenerRegistered:Z

    if-eqz v1, :cond_0

    .line 218
    const-string v0, "Audio device listener already registered"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceChangeListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    if-eqz v1, :cond_2

    .line 224
    :cond_1
    const-string v1, "Partial registration detected, cleaning up first"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->cleanupFailedRegistration()V

    .line 228
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_3

    .line 229
    const-string v0, "AudioManager is null, cannot register listener"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 234
    :cond_3
    :try_start_0
    new-instance v1, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$2;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$2;-><init>(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)V

    iput-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 247
    new-instance v1, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$3;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$3;-><init>(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)V

    iput-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceChangeListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 261
    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :try_start_1
    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mContext:Landroid/content/Context;

    .line 265
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceChangeListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 264
    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->addOnCommunicationDeviceChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V

    const/4 v1, 0x1

    .line 266
    iput-boolean v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsListenerRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    :try_start_2
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 277
    iput-boolean v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsRingtoneMode:Z

    .line 278
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->scheduleDelayedDeviceNotification()V

    .line 280
    :cond_4
    const-string v0, "Audio device listener registered successfully"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->cleanupFailedRegistration()V

    .line 271
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to register audio device listener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->cleanupFailedRegistration()V

    return-void
.end method

.method private scheduleDelayedDeviceNotification()V
    .locals 4

    .line 140
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->cancelDelayedDeviceNotification()V

    .line 142
    new-instance v0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController$1;-><init>(Lorg/codeaurora/ims/CrsAudioOutputDeviceController;)V

    iput-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceNotificationRunnable:Ljava/lang/Runnable;

    .line 161
    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    const-string v0, "Scheduled delayed device notification in 400ms"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterAudioDeviceListener()V
    .locals 5

    .line 293
    iget-boolean v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsListenerRegistered:Z

    if-nez v0, :cond_0

    .line 294
    const-string v0, "Audio device listener not registered, nothing to unregister"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceChangeListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-nez v3, :cond_1

    goto :goto_2

    .line 307
    :cond_1
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->removeOnCommunicationDeviceChangedListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to remove device listener: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceChangeListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 315
    :try_start_1
    iget-object v2, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to remove mode listener: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    :goto_1
    iput-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mOnModeChangedListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 321
    iput-boolean v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsListenerRegistered:Z

    .line 322
    iput-boolean v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsRingtoneMode:Z

    .line 323
    const-string v0, "Audio device listener unregistered"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 300
    :cond_2
    :goto_2
    const-string v0, "AudioManager or listener is null, cannot unregister"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iput-boolean v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsListenerRegistered:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 398
    const-string v0, "Disposing CrsAudioOutputDeviceController"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->cancelDelayedDeviceNotification()V

    .line 400
    iget-boolean v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->unregisterAudioDeviceListener()V

    :cond_0
    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsRingtoneMode:Z

    return-void
.end method

.method public onCrsStatusChanged(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;Z)V
    .locals 1

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    iget-object p2, p2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p2, v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->onCallEnded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    return-void

    .line 100
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onCrsStatusChanged: callId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isCrsCall="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " hasCrsCall="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 103
    iget-object p2, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-nez p2, :cond_3

    .line 105
    iput-object p1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 106
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->registerAudioDeviceListener()V

    return-void

    :cond_3
    if-nez p3, :cond_4

    .line 107
    iget-object p2, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz p2, :cond_4

    if-ne p1, p2, :cond_4

    .line 109
    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->dispose()V

    :cond_4
    return-void

    .line 92
    :cond_5
    :goto_1
    const-string p1, "onCrsStatusChanged: call session or dc is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CrsAudioOutputDeviceController{hasCrsCall="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ringtoneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsRingtoneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listenerRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mIsListenerRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pendingNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mDeviceNotificationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object p0, p0, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->mCurrentCrsCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, "null"

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
