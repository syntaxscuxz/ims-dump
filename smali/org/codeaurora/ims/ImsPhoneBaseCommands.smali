.class public abstract Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.super Ljava/lang/Object;
.source "ImsPhoneBaseCommands.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsPhoneCommandsInterface;


# instance fields
.field protected mAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mContext:Landroid/content/Context;

.field protected mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field protected mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mImsNetworkStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mOffOrNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mPhoneType:I

.field protected mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mRadioStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mRefreshViceInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mRingRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field protected mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field protected mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mVoicePrivacyOffRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mVoicePrivacyOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 76
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 78
    const-string v1, "NotifyRegistrantLock"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_1

    .line 81
    const-string p1, "Constructor: wakelock initialised"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    goto :goto_0

    .line 86
    :cond_0
    const-string p1, "Constructor: Context is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :cond_1
    :goto_0
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 90
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 91
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 92
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 93
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 94
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 95
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mImsNetworkStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 96
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 97
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOffRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 98
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 99
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 100
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRefreshViceInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 101
    new-instance p1, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-void
.end method


# virtual methods
.method public getRadioState()Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object p0
.end method

.method protected onRadioAvailable()V
    .locals 0

    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 159
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 161
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 162
    :try_start_0
    iget-object p2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p2, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 164
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 165
    new-instance p0, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 167
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 218
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 220
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 288
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 289
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 129
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 130
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mImsNetworkStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 266
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 267
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOffRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 255
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 256
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 179
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 181
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 182
    :try_start_0
    iget-object p2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p2, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 184
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    .line 185
    new-instance p0, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 187
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 199
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 201
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 202
    :try_start_0
    iget-object p2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p2, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 204
    iget-object p2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    sget-object p3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    if-eq p2, p3, :cond_0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    .line 205
    :cond_0
    new-instance p0, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 207
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 139
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 141
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 142
    :try_start_0
    iget-object p2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p2, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 144
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 145
    new-instance p0, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 147
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerForPreAlertingCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 357
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 358
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 113
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 115
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter p1

    .line 116
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 117
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant()V

    .line 118
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 277
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 278
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public registerForViceRefreshInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 351
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 352
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRefreshViceInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 240
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-void
.end method

.method public setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 245
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 230
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-void
.end method

.method protected setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 313
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    if-ne v1, p1, :cond_0

    .line 317
    monitor-exit v0

    return-void

    .line 320
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 322
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 323
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 324
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->onRadioAvailable()V

    .line 327
    :cond_1
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 328
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 331
    :cond_2
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result p1

    if-nez p1, :cond_3

    .line 332
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 335
    :cond_3
    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 336
    :cond_4
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 338
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 340
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 0

    .line 250
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    invoke-virtual {p0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    invoke-virtual {p0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 225
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 0

    .line 294
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mImsNetworkStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 0

    .line 272
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOffRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 0

    .line 261
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 194
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 213
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterForPreAlertingCallInfo(Landroid/os/Handler;)V
    .locals 0

    .line 363
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0

    .line 283
    iget-object p0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {p0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
