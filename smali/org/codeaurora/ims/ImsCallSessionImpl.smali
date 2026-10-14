.class public Lorg/codeaurora/ims/ImsCallSessionImpl;
.super Lorg/codeaurora/ims/QImsSessionBase;
.source "ImsCallSessionImpl.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsConferenceController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;,
        Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;
    }
.end annotation


# static fields
.field private static final ALERT_HANDOVER:I = 0x1

.field private static final ALERT_TIMES_AFTER_DROP_CALL:I = 0x3

.field private static final ANONYMOUS_CALLER:Ljava/lang/String; = "anonymous"

.field static final ATT_WIFI_CONGESTED:Ljava/lang/String; = "Call is dropped due to Wi-Fi backhaul is congested"

.field static final DECLINED:Ljava/lang/String; = "Declined"

.field private static final DEFAULT_CALL_INDEX:I = -0x1

.field private static final EVENT_ACCEPT:I = 0x2

.field private static final EVENT_ADD_PARTICIPANT:I = 0x8

.field private static final EVENT_ADD_PARTICIPANTS:I = 0x11

.field private static final EVENT_CLOSE_SESSION:I = 0xb

.field private static final EVENT_CONFERENCE:I = 0x6

.field private static final EVENT_DEFLECT:I = 0x10

.field private static final EVENT_DIAL:I = 0x1

.field private static final EVENT_HANGUP:I = 0x3

.field private static final EVENT_HOLD:I = 0x4

.field private static final EVENT_ON_SET_LISTENER:I = 0x17

.field private static final EVENT_REJECT:I = 0x7

.field private static final EVENT_REMOVE_PARTICIPANT:I = 0xa

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_RINGBACK_TONE:I = 0x9

.field private static final EVENT_RTT_MESSAGE_RECEIVED:I = 0xc

.field private static final EVENT_RTT_UPGRADE_CONFIRM_DONE:I = 0xf

.field private static final EVENT_SEND_DTMF:I = 0x13

.field private static final EVENT_SEND_RTT_MESSAGE:I = 0xd

.field private static final EVENT_SEND_RTT_MODIFY_REQUEST:I = 0xe

.field private static final EVENT_SEND_SIP_DTMF:I = 0x15

.field private static final EVENT_SIP_DTMF_RECEIVED:I = 0x16

.field private static final EVENT_TRANSFER:I = 0x14

.field private static final EVENT_VOICE_INFO_CHANGED:I = 0x12

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE:Ljava/lang/String; = "persist.dbg.call_encrypt_ovr"

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE_DEFAULT:I = 0x0

.field private static final RESET_ALERT_HANDOVER_TIME:I = 0x2

.field private static final RESET_TIME:J = 0x1b7740L

.field private static RESTORE_ANONYMOUS:I = 0x0

.field private static RESTORE_PARTICIPANT:I = 0x0

.field static final RTP_INACTIVITY:Ljava/lang/String; = "RTP inactivity"

.field public static final SUPP_NOTIFICATION_TYPE_MO:I = 0x0

.field public static final SUPP_NOTIFICATION_TYPE_MT:I = 0x1

.field public static final SUPP_SVC_CODE_INVALID:I = -0x1

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3

.field static final TMO_IP_PACKET_LOST:Ljava/lang/String; = "CD-021: ISP Problem"

.field static final TMO_WIFI_SIGNAL_LOST:Ljava/lang/String; = "CD-11: Wi-Fi signal lost"

.field private static USE_RESTORE_NUMBER:I = 0x0

.field private static final VOLUME_FOR_ALERT:I = 0x28

.field static final WIFI_DEGRADED:Ljava/lang/String; = "Call is dropped due to Wi-Fi signal is degraded"

.field static final WIFI_SIGNAL_LOST:Ljava/lang/String; = "Call is dropped as WiFi is lost"

.field private static mLocalParticipants:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMultiEndpoingCallEnd:[Ljava/lang/String; = null

.field private static mRestoreMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sToken:I = -0x1

.field private static viceCallEndSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnswerOptionTirConfig:I

.field private mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

.field private mCallId:I

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallee:Ljava/lang/String;

.field private mCameraId:Ljava/lang/String;

.field private mConfController:Lorg/codeaurora/ims/ImsConferenceController;

.field private mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

.field private mCrsAudioOutputDeviceController:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

.field private mCrsCrbtListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/internal/ICrsCrbtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDc:Lorg/codeaurora/ims/DriverCallIms;

.field private mDisconnCause:I

.field private mDualVideoCapability:I

.field private mHandler:Landroid/os/Handler;

.field private mHostAddr:Ljava/lang/String;

.field private mHostAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

.field mImsVideoCallProvider:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

.field mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

.field private mInCall:Z

.field private mIsCallTerminatedDueToLowBattery:Z

.field mIsConferenceHostSession:Z

.field private mIsLowBattery:Z

.field private mIsMergeHostSession:Z

.field private mIsPendingHangup:Z

.field private mIsVideoAllowed:Z

.field private mIsVoiceAllowed:Z

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mMtSuppSvcCode:I

.field private mOldAudioQuality:I

.field private mPendingAddParticipantsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

.field private mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRestoreProp:I

.field private mRingbackToneRequest:Z

.field private mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

.field private mShouldRestoreAnonymous:Z

.field private mShouldRestoreParticipant:Z

.field private mShouldUseRestoreNumber:Z

.field private mSipDtmfInfo:Ljava/lang/String;

.field private mStateChangeReportingAllowed:Z

.field private mToken:I

.field private mVoWifiQuality:I

.field private mWasUvsCall:Z

.field private mWifiAlertHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$72B-RiGYbagSycQxSWceHVr3CEg(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$setCrsCrbtListener$2(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BoOhg08IElN1AGLZICHeJSsnTOI(Lorg/codeaurora/ims/ImsCallSessionImpl;Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$transfer$1(Lcom/android/ims/internal/IImsCallSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ghpNaagGbuStdCPOvfIndOMTAZE(Lorg/codeaurora/ims/ImsCallSessionImpl;ILorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$updateCrsStatus$5(ILorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYA1yLGuJRSqjSuvh1itPwAWBeM(Lorg/codeaurora/ims/ImsCallSessionImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$transfer$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$qUljoo-AZWa53QOotNqkM1ImneQ(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$handleSipDtmfReceived$4(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uliLs79jNhH2ngLFirx4Hn89Jt0(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$setCrsCrbtListener$3(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCallProfile(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/telephony/ims/ImsCallProfile;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDc(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRingbackToneRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDisconnCause(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRingbackToneRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcanIgnoreDialError(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canIgnoreDialError(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoClose(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doClose()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSipDtmfReceived(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleSipDtmfReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeDisplaySuppServiceErrorMsg(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeNotifyConferenceState(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyConferenceState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeNotifyPendingCallEndReason(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyPendingCallEndReason()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessAddParticipantResponse(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processAddParticipantResponse(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessAddParticipantsList(Lorg/codeaurora/ims/ImsCallSessionImpl;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processAddParticipantsList([Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBeepForAlert(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startBeepForAlert()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmLocalParticipants()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 867
    const-string v9, "1014|Call completed elsewhere"

    const-string v10, "1014|call completion elsewhere"

    const-string v0, "332|simultaneous call limit has already been reached"

    const-string v1, "332|Forbidden: Simultaneous Call Limit Has Already Been Reached"

    const-string v2, "338|another device sent all devices busy response"

    const-string v3, "501|call completion elsewhere"

    const-string v4, "501|call has been pulled by another device"

    const-string v5, "510|call has been pulled by another device"

    const-string v6, "501|another device sent all devices busy response"

    const-string v7, "510|another device sent all devices busy response"

    const-string v8, "1014|call has been pulled by another device"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMultiEndpoingCallEnd:[Ljava/lang/String;

    .line 880
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->viceCallEndSet:Ljava/util/Map;

    .line 4657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4673
    sput v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->RESTORE_PARTICIPANT:I

    const/4 v0, 0x2

    .line 4674
    sput v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->RESTORE_ANONYMOUS:I

    const/4 v0, 0x4

    .line 4675
    sput v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->USE_RESTORE_NUMBER:I

    .line 4677
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsConferenceController;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 327
    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/QImsSessionBase;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    const/4 p0, 0x0

    .line 155
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 p1, -0x1

    .line 158
    iput p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 159
    new-instance p2, Landroid/telephony/ims/ImsCallProfile;

    const/4 p3, 0x1

    const/4 p4, 0x7

    invoke-direct {p2, p3, p4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 161
    new-instance p2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p2, p3, p4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 163
    new-instance p2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p2}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 165
    new-instance p2, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {p2, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 166
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    const/4 p2, 0x0

    .line 167
    iput p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 168
    iput p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    .line 169
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 170
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 171
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    .line 172
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 176
    iput p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mToken:I

    .line 177
    iput p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDualVideoCapability:I

    .line 183
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    .line 188
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 189
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 190
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWasUvsCall:Z

    .line 290
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 292
    iput-boolean p3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 294
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsMergeHostSession:Z

    .line 296
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 297
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    .line 298
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 299
    iput p3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    .line 301
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 p1, 0x2

    .line 303
    iput p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    .line 304
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    .line 305
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    .line 306
    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    .line 320
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    .line 537
    iput p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mOldAudioQuality:I

    .line 4659
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHostAddresses:Ljava/util/ArrayList;

    .line 4666
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreParticipant:Z

    .line 4668
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreAnonymous:Z

    .line 4670
    iput-boolean p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldUseRestoreNumber:Z

    .line 4672
    iput p2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreProp:I

    if-nez p5, :cond_1

    const p1, 0x7f010003

    .line 330
    invoke-direct {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p3

    .line 331
    :goto_1
    invoke-direct {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 332
    iput-boolean p5, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 333
    iput-object p7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    .line 334
    invoke-virtual {p7, v0}, Lorg/codeaurora/ims/ImsConferenceController;->registerListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)V

    .line 335
    iget-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 p5, 0xc

    invoke-virtual {p1, p4, p5, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRttMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    iget-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 p5, 0x12

    invoke-virtual {p1, p4, p5, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVoiceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    iget-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 p5, 0x16

    invoke-virtual {p1, p4, p5, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSipDtmfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    invoke-direct {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->initMultiEndPointCallEndTable()V

    .line 341
    const-string p0, "call.conference.restore"

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreProp:I

    .line 342
    const-string p0, "moto_should_restore_unknown_participant_bool"

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCarrierConfigEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    iget p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreProp:I

    sget p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->RESTORE_PARTICIPANT:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    move p0, p2

    goto :goto_3

    :cond_3
    :goto_2
    move p0, p3

    :goto_3
    iput-boolean p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreParticipant:Z

    if-eqz p0, :cond_8

    .line 346
    const-string p0, "moto_should_restore_anonymous_bool"

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCarrierConfigEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    iget p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreProp:I

    sget p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->RESTORE_ANONYMOUS:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_4

    goto :goto_4

    :cond_4
    move p0, p2

    goto :goto_5

    :cond_5
    :goto_4
    move p0, p3

    :goto_5
    iput-boolean p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreAnonymous:Z

    .line 350
    const-string p0, "moto_use_restore_number_for_conference"

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCarrierConfigEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    iget p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreProp:I

    sget p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->USE_RESTORE_NUMBER:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_6

    goto :goto_6

    :cond_6
    move p3, p2

    :cond_7
    :goto_6
    iput-boolean p3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldUseRestoreNumber:Z

    .line 354
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "mShouldRestoreParticipant "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreParticipant:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mShouldRestoreAnonymous "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreAnonymous:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mShouldUseRestoreNumber "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldUseRestoreNumber:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V
    .locals 8

    .line 397
    new-instance v6, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    move-object v0, p0

    move-object v2, p2

    move-object v1, p3

    move-object v4, p4

    move v5, p5

    move v3, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsConferenceController;)V

    .line 400
    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 401
    new-instance p0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 402
    iget-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x9

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V
    .locals 8

    .line 410
    new-instance v6, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    move-object v0, p0

    move-object v2, p2

    move-object v1, p3

    move-object v4, p4

    move v5, p5

    move v3, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsConferenceController;)V

    .line 414
    new-instance p0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 415
    iget p0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 416
    iget-object p0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 420
    iget-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeInitCrsAudioOutputDeviceController(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 421
    iget-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 422
    iget-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 423
    iget-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCrsStatus(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 424
    iget-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 426
    new-instance p0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object p0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    return-void
.end method

.method private IsMultiEndpointCallEndCause(Landroid/telephony/ims/ImsReasonInfo;)Z
    .locals 3

    .line 907
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 909
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 912
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->viceCallEndSet:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsMultiEndpointCallEndCause=true; Code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ; message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 913
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private adjustCallTypeForRttCompatibility(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 3170
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 3172
    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsSenderRxr;->isRttVtFeatureSupported()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3173
    const-string p1, "dropping VT call type due to lack of modem support"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method private alertForHandoverFailed()V
    .locals 2

    .line 4050
    const-string v0, "config_regional_wifi_calling_notificaion_enable"

    const-string v1, "com.android.settings"

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4053
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startAlert()V

    :cond_0
    return-void
.end method

.method private canDial(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1

    .line 3222
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3223
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result p0

    if-nez p0, :cond_1

    .line 3224
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private canIgnoreDialError(Ljava/lang/Throwable;)Z
    .locals 4

    .line 4450
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "canIgnoreDialError exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4453
    :try_start_0
    throw p1
    :try_end_0
    .catch Lorg/codeaurora/ims/ImsRilException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 4473
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canIgnoreDialError: Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p1

    .line 4455
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRilException;->getCode()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    return v0

    .line 4458
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isAidlReorderingSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 4459
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result p1

    .line 4460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "canIgnoreDialError errorCode: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    return v0

    :cond_1
    :pswitch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xf6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private cleanupCrsAudioOutputDeviceController()V
    .locals 1

    .line 4610
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsAudioOutputDeviceController:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    if-eqz v0, :cond_0

    .line 4611
    const-string v0, "Cleaning up CrsAudioOutputDeviceController"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4612
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsAudioOutputDeviceController:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->dispose()V

    const/4 v0, 0x0

    .line 4613
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsAudioOutputDeviceController:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    :cond_0
    return-void
.end method

.method private clearCallProgressInfoExtras(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/CallProgressInfo;",
            ">;)V"
        }
    .end annotation

    .line 2809
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2812
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/codeaurora/ims/CallProgressInfo;

    if-eqz v2, :cond_1

    .line 2814
    invoke-virtual {v2}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCallProgressExtra(IILjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private doClose()V
    .locals 4

    .line 1709
    const-string v0, "doClose!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1711
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    const-string v0, "Received Session Close request while it is alive"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1715
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1716
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_1

    .line 1717
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->close()V

    .line 1719
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMergeHostSession()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1720
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_3

    .line 1721
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->dispose()V

    .line 1722
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    goto :goto_0

    .line 1725
    :cond_2
    const-string v0, "Not clearing listener, ongoing merge."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1727
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_4

    .line 1728
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1730
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionClosed()V

    .line 1731
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1732
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-eqz v0, :cond_5

    .line 1733
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsConferenceController;->unregisterListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)Z

    .line 1734
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    .line 1736
    :cond_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_6

    .line 1737
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForVoiceInfo(Landroid/os/Handler;)V

    .line 1738
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSipDtmfInfo(Landroid/os/Handler;)V

    .line 1739
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1741
    :cond_6
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 1742
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1743
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1744
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1745
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1746
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v0, 0x0

    .line 1747
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mInCall:Z

    .line 1748
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 1749
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1750
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 1751
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 1752
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1753
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 1754
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 1755
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWasUvsCall:Z

    .line 1757
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->cleanupCrsAudioOutputDeviceController()V

    :cond_7
    return-void
.end method

.method private doneTerminate()Z
    .locals 1

    .line 1137
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1141
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->terminate(I)V

    .line 1142
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 7

    if-eqz p1, :cond_8

    .line 2004
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2017
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    .line 2023
    :goto_0
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 2024
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 2025
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "="

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2027
    aget-object v3, v2, v0

    if-eqz v3, :cond_5

    .line 2032
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 2033
    aget-object v3, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2034
    aget-object v3, v3, v5

    goto :goto_1

    .line 2036
    :cond_1
    aget-object v3, v2, v0

    .line 2050
    :goto_1
    const-string v4, "AdditionalCallInfo"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2051
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/16 v4, 0x13

    .line 2053
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2054
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AdditionalCallInfo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2055
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v4, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "android.telephony.ims.extra.ADDITIONAL_SIP_INVITE_FIELDS"

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2059
    :cond_2
    const-string v4, "DisplayText"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2060
    aget-object v3, v2, v5

    .line 2061
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "DisplayText = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 2062
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2063
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "android.telephony.ims.extra.CALL_SUBJECT"

    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2067
    :cond_3
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    aget-object v2, v2, v5

    invoke-virtual {v4, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2039
    :cond_5
    const-string p1, "Bad extra string from lower layers!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2043
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Element "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is null in CallDetails Extras!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 2005
    :cond_8
    :goto_3
    const-string p1, "Null dcUpdate/CallProfile in extractCallDetailsIntoCallProfile"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private extractCallExtrasIntoCallDetails(Landroid/os/Bundle;Lorg/codeaurora/ims/CallDetails;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 3239
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 3244
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3245
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v2, ""

    goto :goto_1

    .line 3246
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3248
    aput-object v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3251
    :cond_1
    invoke-virtual {p2, p0}, Lorg/codeaurora/ims/CallDetails;->setExtras([Ljava/lang/String;)V

    return-void

    .line 3253
    :cond_2
    const-string p1, "No extras in ImsCallProfile to map into CallDetails."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private extractCallForwardInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3197
    const-string v1, "[\\r\\n]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 3200
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3201
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3202
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extractCallForwardInfoDetails :: callForwardInfoHops["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private failDialRequest(I)V
    .locals 2

    .line 3215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3216
    new-instance v0, Lorg/codeaurora/ims/ImsRilException;

    const-string v1, "Dial Failed"

    invoke-direct {v0, p1, v1}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3218
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static fromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/CallComposerInfo;
    .locals 10

    .line 2606
    sget-object v0, Lorg/codeaurora/ims/CallComposerInfo$Location;->UNKNOWN:Lorg/codeaurora/ims/CallComposerInfo$Location;

    .line 2607
    const-string v1, "android.telephony.ims.extra.CALL_SUBJECT"

    invoke-virtual {p0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2608
    const-string v2, "android.telephony.ims.extra.PRIORITY"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v2

    .line 2610
    const-string v3, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {p0, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2612
    const-string v4, "android.telephony.ims.extra.LOCATION"

    invoke-virtual {p0, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    if-eqz p0, :cond_0

    .line 2614
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    .line 2615
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 2616
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 2617
    new-instance v4, Lorg/codeaurora/ims/CallComposerInfo$Location;

    invoke-direct/range {v4 .. v9}, Lorg/codeaurora/ims/CallComposerInfo$Location;-><init>(FDD)V

    move-object v0, v4

    .line 2620
    :cond_0
    new-instance p0, Lorg/codeaurora/ims/CallComposerInfo;

    invoke-direct {p0, v2, v1, v3, v0}, Lorg/codeaurora/ims/CallComposerInfo;-><init>(ILjava/lang/String;Landroid/net/Uri;Lorg/codeaurora/ims/CallComposerInfo$Location;)V

    return-object p0
.end method

.method private static getCallMode(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2215
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v1, :cond_1

    move v1, v0

    .line 2216
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2217
    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v2, v2, v1

    .line 2218
    iget v3, v2, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v3, v4, :cond_0

    .line 2219
    iget-object p0, v2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object p0, p0, v0

    iget p0, p0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getCallModeFromRadioTech(I)I
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0xe

    return p0
.end method

.method public static getLineInfo(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .locals 3

    if-nez p0, :cond_0

    .line 2997
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object p0

    return-object p0

    .line 2999
    :cond_0
    const-string v0, "originatingNumber"

    .line 3000
    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3001
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3004
    :cond_1
    const-string v1, "lineType"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p0

    .line 3006
    new-instance v1, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-direct {v1, v0, p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 3002
    :cond_2
    :goto_0
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object p0

    return-object p0
.end method

.method private getMtSuppSvcCode()I
    .locals 0

    .line 1273
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    return p0
.end method

.method private getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 4034
    :try_start_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 4037
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 4039
    :cond_1
    const-string v1, "bool"

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 4040
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4042
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private getRestoreUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 4705
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreMap:Ljava/util/Map;

    const-string v1, "user "

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4706
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in mRestoreMap "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4711
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getUriAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 4712
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSelfAddress(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 4714
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "anonymous"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreAnonymous:Z

    if-nez v5, :cond_1

    goto :goto_0

    .line 4722
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 4723
    sget-object v2, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4724
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getUriAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 4725
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getRestoreUser userNumber "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " restoreUserNumber "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4726
    invoke-static {v3}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4725
    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4727
    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldUseRestoreNumber:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 4733
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in mLocalParticipants "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 4735
    :cond_3
    const-string p1, " mLocalParticipants is empty, cannot find restore number "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 4717
    sget-object p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-object v4
.end method

.method private getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 487
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    if-eqz v3, :cond_0

    .line 488
    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p1, :cond_0

    iget-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 490
    iget-object p1, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object p1, p1, v0

    iget v0, p1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RestrictCause is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 4245
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    if-eqz v3, :cond_0

    .line 4246
    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p1, :cond_0

    .line 4247
    iget v0, v3, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4252
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RTT: getRttMode rtt mode = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private getSubId()I
    .locals 2

    .line 4782
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4784
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4785
    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getSuppSvcErrorMessage(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x7f030007

    goto :goto_0

    :cond_0
    const p1, 0x7f030008

    goto :goto_0

    :cond_1
    const p1, 0x7f030006

    .line 3987
    :goto_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getToken()I
    .locals 2

    .line 4569
    sget v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->sToken:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    sput v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->sToken:I

    return v0
.end method

.method private getUriAddress(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 4693
    const-string p0, ""

    return-object p0

    .line 4695
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    .line 4696
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4697
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private handleSipDtmfReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 3830
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3834
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    .line 3835
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 3831
    :cond_1
    :goto_0
    const-string p1, "handleSipDtmfReceived invalid info"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2985
    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initMultiEndPointCallEndTable()V
    .locals 10

    .line 883
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMultiEndpoingCallEnd:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 884
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 885
    const-string v5, "|"

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 886
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    goto :goto_2

    .line 891
    :cond_0
    :try_start_0
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    .line 892
    aget-object v5, v5, v7

    .line 894
    sget-object v7, Lorg/codeaurora/ims/ImsCallSessionImpl;->viceCallEndSet:Ljava/util/Map;

    new-instance v8, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-direct {v8, v9, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 895
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 894
    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 898
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid multiendpoint Call End string found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 902
    :cond_3
    const-string v0, "No carrier multiendpoint end code defined."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private inviteParticipant(Ljava/lang/String;)V
    .locals 3

    .line 3716
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inviteParticipant participant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3717
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3718
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    .line 3719
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3718
    invoke-virtual {v0, p1, v1, v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    return-void
.end method

.method private isCallMarkedUnwanted()Z
    .locals 2

    .line 3486
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3487
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3488
    invoke-virtual {v0}, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3489
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasUserMarkedCallUnwanted()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private isCarrierConfigEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 4769
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 4770
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 4771
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4774
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4777
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCarrierConfigEnabled key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private isCarrierOneDial(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1

    .line 3209
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 3210
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3211
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isConfigEnabled(I)Z
    .locals 0

    .line 4110
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private isCrsDataChangedValid(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2569
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2570
    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2571
    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2572
    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result p0

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isDualVtSupported()Z
    .locals 0

    .line 4560
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDualVideoCapability:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isIntelligentCallingCallFailCause(I)Z
    .locals 1

    const/16 v0, 0xbcd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbce

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isLowBatteryVideoCall()Z
    .locals 1

    .line 3528
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isMultiEndpointFailCause(I)Z
    .locals 0

    const/16 p0, 0x3f6

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3f7

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3f8

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isSelfAddress(Ljava/lang/String;)Z
    .locals 4

    .line 4743
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4744
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4746
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 4747
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4748
    const-string p1, "isSelfAddress(): true, meet host info in mHostAddr"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 4753
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getSelfUri()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4755
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 4756
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 4757
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getUriAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 4758
    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4759
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isSelfAddress() selfId: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " addr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 465
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 466
    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p0, :cond_1

    .line 467
    iget p0, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    iget p0, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    :cond_0
    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private isSuppSvcToastMsgEnabled()Z
    .locals 2

    .line 3964
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 3965
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3964
    const-string v0, "call.toast.supp_svc_fail"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method private isTerminateLowBatteryCall()Z
    .locals 3

    .line 3513
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_1

    .line 3514
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3520
    :cond_0
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isUserRejectedFailCause(Landroid/telephony/ims/ImsReasonInfo;)Z
    .locals 1

    .line 4321
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p0

    const/16 v0, 0x169

    if-ne p0, v0, :cond_0

    .line 4322
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4323
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Declined"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVideoCrsFallback(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2579
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2584
    :cond_0
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_1

    return v0

    .line 2589
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v2}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v2

    if-ne v1, v2, :cond_2

    return v0

    .line 2598
    :cond_2
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result p0

    const/4 v1, 0x2

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_3

    iget-object p0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2600
    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result p0

    and-int/2addr p0, v1

    if-nez p0, :cond_3

    iget-object p0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2602
    invoke-virtual {p0}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static isWfaType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$handleSipDtmfReceived$4(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2

    .line 3837
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onSipDtmfReceived(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3839
    :catchall_0
    const-string p1, "onSipDtmfReceived exception"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setCrsCrbtListener$2(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 3

    .line 3803
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 3804
    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v2, v2, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 3803
    invoke-interface {p1, v0, v1, v2}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onCrsDataUpdated(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3806
    :catchall_0
    const-string p1, "onCrsDataUpdate exception"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setCrsCrbtListener$3(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2

    .line 3811
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onSipDtmfReceived(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3813
    :catchall_0
    const-string p1, "onSipDtmfReceived exception"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$transfer$0(II)V
    .locals 6

    .line 3459
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    .line 3461
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const/4 v2, 0x2

    const/4 v3, 0x0

    move v1, p1

    move v4, p2

    .line 3459
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method private synthetic lambda$transfer$1(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 4

    .line 3443
    :try_start_0
    const-string v0, "handleTransfer"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3447
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3450
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3454
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    move v1, p1

    move p1, v3

    .line 3458
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda4;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;II)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid call id for the other session. ex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 3463
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteException caught = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$updateCrsStatus$5(ILorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 1

    .line 3888
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-boolean p2, p2, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    invoke-interface {p3, v0, p1, p2}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onCrsDataUpdated(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3891
    :catchall_0
    const-string p1, "onCrsDataUpdate exception"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 2103
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x13

    const/16 v4, 0x12

    const/16 v5, 0x11

    const/16 v6, 0x10

    const/16 v7, 0xf

    const/16 v8, 0xe

    const/16 v9, 0xd

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "GSM_HR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    move/from16 v22, v3

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "GSM_FR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    move/from16 v22, v4

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "G711AB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    move/from16 v22, v5

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "EVS_WB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    move/from16 v22, v6

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "EVS_NB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    move/from16 v22, v7

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "EVS_FB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    move/from16 v22, v8

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "EVRC_B"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    move/from16 v22, v9

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "AMR_WB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    move/from16 v22, v10

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "AMR_NB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    move/from16 v22, v11

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "GSM_EFR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    move/from16 v22, v12

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "QCELP13K"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    move/from16 v22, v13

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "G711U"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    move/from16 v22, v14

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "G711A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    move/from16 v22, v15

    goto :goto_0

    :sswitch_d
    const-string v2, "G729"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    move/from16 v22, v16

    goto :goto_0

    :sswitch_e
    const-string v2, "G723"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    move/from16 v22, v17

    goto :goto_0

    :sswitch_f
    const-string v2, "G722"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_0

    :cond_10
    move/from16 v22, v18

    goto :goto_0

    :sswitch_10
    const-string v2, "EVRC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_0

    :cond_11
    move/from16 v22, v19

    goto :goto_0

    :sswitch_11
    const-string v2, "EVS_SWB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_0

    :cond_12
    move/from16 v22, v1

    goto :goto_0

    :sswitch_12
    const-string v2, "EVRC_WB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_0

    :cond_13
    move/from16 v22, v20

    goto :goto_0

    :sswitch_13
    const-string v2, "EVRC_NW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_0

    :cond_14
    move/from16 v22, v21

    .line 2165
    :goto_0
    const-string v2, "ImsCallSessionImpl"

    packed-switch v22, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported codec "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, v21

    goto :goto_1

    :pswitch_0
    move v1, v12

    goto :goto_1

    :pswitch_1
    move v1, v13

    goto :goto_1

    :pswitch_2
    move v1, v7

    goto :goto_1

    :pswitch_3
    move v1, v4

    goto :goto_1

    :pswitch_4
    move v1, v5

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x14

    goto :goto_1

    :pswitch_6
    move/from16 v1, v17

    goto :goto_1

    :pswitch_7
    move/from16 v1, v20

    goto :goto_1

    :pswitch_8
    move v1, v14

    goto :goto_1

    :pswitch_9
    move/from16 v1, v19

    goto :goto_1

    :pswitch_a
    move v1, v11

    goto :goto_1

    :pswitch_b
    move v1, v9

    goto :goto_1

    :pswitch_c
    move v1, v6

    goto :goto_1

    :pswitch_d
    move v1, v10

    goto :goto_1

    :pswitch_e
    move v1, v8

    goto :goto_1

    :pswitch_f
    move/from16 v1, v18

    goto :goto_1

    :pswitch_10
    move v1, v3

    goto :goto_1

    :pswitch_11
    move/from16 v1, v16

    goto :goto_1

    :pswitch_12
    move v1, v15

    .line 2168
    :goto_1
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "AudioQuality is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x268dd77a -> :sswitch_13
        -0x268dd678 -> :sswitch_12
        -0x2673319f -> :sswitch_11
        0x20aaa2 -> :sswitch_10
        0x211b10 -> :sswitch_f
        0x211b11 -> :sswitch_e
        0x211b17 -> :sswitch_d
        0x4024351 -> :sswitch_c
        0x4024365 -> :sswitch_b
        0x30932dd2 -> :sswitch_a
        0x3de5f773 -> :sswitch_9
        0x734ec6ed -> :sswitch_8
        0x734ec804 -> :sswitch_7
        0x7aa095e5 -> :sswitch_6
        0x7aa17059 -> :sswitch_5
        0x7aa17151 -> :sswitch_4
        0x7aa17268 -> :sswitch_3
        0x7c462711 -> :sswitch_2
        0x7dde20ea -> :sswitch_1
        0x7dde2128 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_13
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mapCallTypeFromProfile(I)I
    .locals 4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v0

    :cond_2
    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    return v1

    :cond_5
    const/16 p0, 0xa

    return p0
.end method

.method private mapResponseToMode(Z)I
    .locals 0

    return p1
.end method

.method private maybeCreatePendingEndCallReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 3290
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3294
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeCreateVideoProvider(Z)V
    .locals 3

    .line 367
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 368
    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isSimlessRttSupported(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_1

    .line 371
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p0, v1, v2}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    :cond_1
    if-eqz p1, :cond_2

    .line 374
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez p1, :cond_2

    .line 375
    const-string p1, "maybeCreateVideoProvider: Creating VideoCallProvider"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    new-instance p1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {p1, p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 377
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 380
    :cond_2
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez p1, :cond_3

    goto :goto_0

    .line 383
    :cond_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVtSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    if-nez p1, :cond_4

    .line 384
    const-string p1, "maybeCreateVideoProvider: Creating secondary video call provider"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    new-instance p1, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProvider;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    :cond_4
    :goto_0
    return-void
.end method

.method private maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 1

    .line 3946
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSuppSvcToastMsgEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getSuppSvcErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3948
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private maybeInitCrsAudioOutputDeviceController(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 1

    if-eqz p1, :cond_4

    .line 4590
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 4591
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsAudioOutputDeviceController:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4592
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 4593
    :cond_2
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result p1

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 4595
    :cond_3
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVideoCrsSupported(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 4596
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isCrsDeviceSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4597
    const-string p1, "maybeInitCrsAudioOutputDeviceController: Initializing controller"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4598
    new-instance p1, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsAudioOutputDeviceController:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    :cond_4
    :goto_1
    return-void
.end method

.method private maybeNotifyCallTypeChanging(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 1

    .line 1118
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1121
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyCallTypeChanging(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeNotifyConferenceState()V
    .locals 1

    .line 3266
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3270
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ConfInfo;->getConfUriList()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 3271
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->restoreUnknownParticipants()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-eqz v0, :cond_2

    .line 3272
    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    .line 3273
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3276
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private maybeNotifyCrsAudioOutputDeviceController(Lorg/codeaurora/ims/DriverCallIms;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 4620
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsAudioOutputDeviceController:Lorg/codeaurora/ims/CrsAudioOutputDeviceController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4624
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lorg/codeaurora/ims/CrsAudioOutputDeviceController;->onCrsStatusChanged(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeNotifyPendingCallEndReason()V
    .locals 2

    .line 3280
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maybeNotifyPendingCallEndReason - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3284
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    const/4 v0, 0x0

    .line 3285
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingCallEndReason:Landroid/telephony/ims/ImsReasonInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeOverrideReason(I)I
    .locals 1

    .line 3493
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallMarkedUnwanted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3495
    const-string p1, "Overriden Reason : 365"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x16d

    return p0

    :cond_0
    return p1
.end method

.method private maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z
    .locals 5

    .line 928
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Call details updated. currentCallDetails= "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to newCallDetails= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private maybeUpdateCallForwardInfoExtras(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 1

    .line 3184
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3185
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 3187
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallForwardInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 3185
    const-string p1, "CallHistoryInfo"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    .line 3188
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3189
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 3191
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallForwardInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 3189
    const-string p1, "CallDiversionInfo"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private maybeUpdateComputedAudioQualityExtras(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 2863
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v0

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 2864
    invoke-virtual {v1}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2868
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "CallAudioQuality"

    if-ne v0, v1, :cond_1

    .line 2870
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2871
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2872
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->removeExtras(Landroid/os/Bundle;Ljava/util/List;)V

    return-void

    .line 2876
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 2877
    invoke-virtual {p1}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result p1

    .line 2876
    invoke-virtual {p0, v2, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private maybeUpdateCrbtExtraAndCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 9

    .line 2882
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v0, :cond_0

    return-void

    .line 2889
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-string v4, "android.telephony.ims.extra.IS_USING_VIDEO_RINGBACK"

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-ne v0, v5, :cond_2

    :cond_1
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2893
    invoke-virtual {v0, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2894
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, v2, v5}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2896
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v4, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2897
    const-string p1, "maybeUpdateCrbtExtraAndCallType - correct call type to voice and reset Crbt extra."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2902
    :cond_2
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_3

    .line 2904
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v4, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2905
    const-string p1, "maybeUpdateCrbtExtraAndCallType - reset Crbt extra since it is not dialing/alerting state."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2913
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isCrbtSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2914
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallDetails;->isCrbtCall()Z

    move-result v0

    move v1, v6

    goto :goto_0

    :cond_4
    move v1, v3

    move v0, v6

    .line 2918
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "maybeUpdateCrbtExtraAndCallType - isCrbtCall : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isCrbtCallBackwardCompatibility : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    .line 2920
    :cond_5
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne p1, v5, :cond_6

    .line 2922
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2923
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, v2, v5}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2925
    const-string p1, "maybeUpdateCrbtExtraAndCallType - set Crbt extra to true and update call type to voice"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2928
    :cond_6
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v4, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2929
    const-string p1, "maybeUpdateCrbtExtraAndCallType - reset Crbt extra since it is rejected and should fall back to normal voice call without CRBT"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private maybeUpdateCrsExtras(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 8

    .line 2625
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2629
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCrsDataChangedValid(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2632
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x6

    const-string v3, "callId"

    const-string v4, "isPreparatory"

    const-string v5, "android.telephony.ims.extra.CRS_AUDIO_MODE"

    const-string v6, "android.telephony.ims.extra.CRS_MEDIA_TYPE"

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2633
    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v0

    const/16 v7, 0xa

    if-ne v0, v7, :cond_3

    .line 2635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2636
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2637
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2638
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2639
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2640
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/codeaurora/ims/ImsCallUtils;->removeExtras(Landroid/os/Bundle;Ljava/util/List;)V

    .line 2642
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2643
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2644
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCallTypeForCrsCall(Lorg/codeaurora/ims/DriverCallIms;Z)V

    :cond_2
    :goto_0
    return-void

    .line 2648
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "maybeUpdateCrsExtras - "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2649
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2650
    invoke-virtual {v7}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v7

    .line 2649
    invoke-virtual {v0, v6, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2651
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 2652
    invoke-static {v6}, Lorg/codeaurora/ims/ImsCallUtils;->getCrsMode(Landroid/content/Context;)I

    move-result v6

    .line 2651
    invoke-virtual {v0, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2653
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-boolean v5, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    invoke-virtual {v0, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2655
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2663
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v0

    .line 2664
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v2, :cond_4

    const/4 v2, 0x4

    if-ne v3, v2, :cond_7

    :cond_4
    if-eqz v0, :cond_5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 2665
    :cond_5
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2669
    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v2, :cond_6

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_7

    .line 2673
    :cond_6
    invoke-direct {p0, p1, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCallTypeForCrsCall(Lorg/codeaurora/ims/DriverCallIms;Z)V

    .line 2676
    :cond_7
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2677
    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    move v1, v4

    .line 2676
    :goto_1
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyCrsAudioOutputDeviceController(Lorg/codeaurora/ims/DriverCallIms;Z)V

    return-void
.end method

.method private maybeUpdateDualVtExtraToAudioOnly(I)V
    .locals 1

    .line 4525
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4528
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v0, "dualVtCallType"

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 4530
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4533
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setDualVtCallExtra(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private maybeUpdateExtrasByCallProgressInfo(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 5

    .line 2723
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 2727
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2729
    :goto_0
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v2}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    .line 2731
    :cond_2
    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v3}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v3

    :goto_1
    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_3

    :goto_2
    return-void

    .line 2735
    :cond_3
    const-string v2, "CallProgRejectQ850Text"

    const-string v3, "CallProgRejectQ850Code"

    const-string v4, "CallProgWfaType"

    if-eqz v0, :cond_4

    .line 2737
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v4, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2739
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v3, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2742
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    const-string p1, "Setting Call Progress info type to invalid"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2748
    :cond_4
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isWfaType(I)Z

    move-result v0

    .line 2752
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_5

    .line 2749
    iget-object p0, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 2750
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result p0

    .line 2749
    invoke-virtual {v1, v4, p0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    return-void

    .line 2752
    :cond_5
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 2753
    invoke-virtual {v0}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonCode()I

    move-result v0

    .line 2752
    invoke-virtual {v1, v3, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2754
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 2755
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonText()Ljava/lang/String;

    move-result-object p1

    .line 2754
    invoke-virtual {p0, v2, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private maybeUpdateExtrasByCallProgressInfoList(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 2

    .line 2770
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    .line 2771
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2776
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->clearCallProgressInfoExtras(Ljava/util/ArrayList;)V

    .line 2779
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 2782
    :cond_3
    :goto_1
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCallProgressInfoExtras(Ljava/util/ArrayList;)V

    return-void
.end method

.method private maybeUpdateIsCalledPartyRingingExtra(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 2

    .line 2760
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getIsCalledPartyRinging()Z

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->getIsCalledPartyRinging()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2764
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v0, "isCalledPartyRinging"

    .line 2765
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getIsCalledPartyRinging()Z

    move-result p1

    .line 2764
    invoke-virtual {p0, v0, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private maybeUpdateLowBatteryStatus()Z
    .locals 4

    .line 1099
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1100
    const-string v0, "merge is in progress so ignore low battery update"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 1104
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result v0

    .line 1105
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 1106
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maybeUpdateLowBatteryStatus isLowBattery: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsLowBattery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 1110
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 1111
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "android.telephony.ims.extra.LOW_BATTERY"

    invoke-virtual {p0, v2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    :cond_2
    return v1
.end method

.method private maybeUpdateUvsExtraAndCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 4

    .line 2935
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallDetails;->isVisualizedVoiceCall()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "android.telephony.ims.extra.IS_USING_UNIDIRECTIONAL_VIDEO_SERVICE"

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v0, v3, :cond_0

    .line 2937
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2939
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2941
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWasUvsCall:Z

    .line 2942
    const-string p1, "maybeUpdateUvsExtraAndCallType - set Uvs extra to true and update call type to voice"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2944
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->isVisualizedVoiceCall()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2945
    const-string p1, "maybeUpdateUvsExtraAndCallType - reset Uvs extra"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2946
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2948
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallModification;->getPendingModify()Lorg/codeaurora/ims/CallModify;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWasUvsCall:Z

    if-eqz p1, :cond_1

    .line 2952
    const-string p1, "maybeUpdateUvsExtraAndCallType - update call type to voice temporarily since there is a pending modify request"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2954
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2960
    :cond_1
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallModification;->getPendingModify()Lorg/codeaurora/ims/CallModify;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWasUvsCall:Z

    if-eqz p1, :cond_3

    .line 2962
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWasUvsCall:Z

    .line 2963
    const-string p1, "maybeUpdateUvsExtraAndCallType - reset mWasUvsCall"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private maybeUpdateVoWifiCallQualityExtra(IZ)V
    .locals 2

    .line 4118
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVoWiFiCallQualityEnabled(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4122
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4126
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maybeUpdateVoWifiCallQualityExtra Quality : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4127
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "VoWiFiCallQuality"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_2

    .line 4131
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private muteStateReporting()V
    .locals 2

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call session state reporting muted! session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 523
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    return-void
.end method

.method private parseErrorCode(Ljava/lang/String;)I
    .locals 0

    .line 1448
    const-string p0, "CD-04"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x44c

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private processAddParticipantResponse(Z)V
    .locals 2

    .line 3683
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processAddParticipantResponse: success = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " pending = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 3684
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3683
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3685
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3686
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3687
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processNextParticipant()V

    :cond_0
    return-void
.end method

.method private processAddParticipantsList([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 3659
    :cond_0
    array-length v1, p1

    .line 3660
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processAddParticipantsList: no of particpants = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pending = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 3661
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3660
    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v1, :cond_3

    .line 3663
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 3667
    :goto_1
    array-length v2, p1

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 3668
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 3671
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processNextParticipant()V

    :cond_3
    return-void
.end method

.method private processNextParticipant()V
    .locals 2

    .line 3677
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3678
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->inviteParticipant(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private restoreUnknownParticipants()Landroid/telephony/ims/ImsConferenceState;
    .locals 9

    .line 4797
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreParticipant:Z

    .line 4800
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz v1, :cond_4

    iget-object v0, v1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 4804
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    .line 4806
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4807
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 4808
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4809
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4810
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 4811
    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4812
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRestoreUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4813
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "restoreUnknownParticipants "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " restoreUser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4814
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 4817
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4822
    const-string v4, "endpoint"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4823
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4827
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " restoreUnknownParticipants map "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4828
    sput-object v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreMap:Ljava/util/Map;

    .line 4830
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    return-object p0

    .line 4801
    :cond_4
    :goto_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    return-object p0
.end method

.method private setCallProgressInfoExtras(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/CallProgressInfo;",
            ">;)V"
        }
    .end annotation

    .line 2821
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2824
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/codeaurora/ims/CallProgressInfo;

    if-eqz v3, :cond_1

    .line 2826
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v4

    invoke-virtual {v3}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonCode()I

    move-result v5

    .line 2827
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonText()Ljava/lang/String;

    move-result-object v3

    .line 2826
    invoke-direct {p0, v4, v5, v3, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCallProgressExtra(IILjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 5

    .line 1147
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 1149
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toAudioCodec(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result v3

    invoke-static {v3, v2, v1}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(III)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    .line 1148
    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1152
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1153
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1156
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_2

    .line 1157
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1158
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 1160
    invoke-static {}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    .line 1159
    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1161
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1162
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 1163
    :cond_1
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 1161
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 1165
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p1, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    :cond_2
    return-void
.end method

.method private setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6

    .line 1172
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 1174
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v2

    .line 1177
    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p1, v4, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 1188
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 1191
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 1194
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    .line 1200
    :goto_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance p1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method private setMergeHostSession(Z)V
    .locals 0

    .line 4376
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsMergeHostSession:Z

    return-void
.end method

.method private setMtSuppSvcCode(I)V
    .locals 0

    .line 1269
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    return-void
.end method

.method private setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 5

    .line 1205
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 1207
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p1, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result p1

    .line 1210
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 1211
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMtSuppSvcCode()I

    move-result v3

    if-ne v3, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    .line 1225
    :goto_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance p1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method private startAlert()V
    .locals 1

    .line 4058
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 4059
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    .line 4083
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startBeepForAlert()V
    .locals 2

    .line 4087
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 4104
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;->start()V

    .line 4106
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "Due to network conditions, the call may be dropped"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static toAudioCodec(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2087
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0}, Lorg/codeaurora/ims/AudioQuality;->getCodec()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2088
    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {p0}, Lorg/codeaurora/ims/AudioQuality;->getCodec()I

    move-result p0

    return p0

    .line 2089
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v1, "Codec"

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static toImsCallProfile(Lorg/codeaurora/ims/MultiIdentityLineInfo;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2972
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2973
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2975
    :cond_1
    const-string v1, "terminatingNumber"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    const-string v0, "lineType"

    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineType()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private static toImsCallProfile(Lorg/codeaurora/ims/CallComposerInfo;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 2536
    :cond_0
    const-string v0, "android.telephony.ims.extra.PRIORITY"

    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2538
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2539
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2540
    const-string v1, "android.telephony.ims.extra.CALL_SUBJECT"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2545
    const-string v1, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getOrganization()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2549
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2550
    const-string v0, "android.telephony.ims.extra.IS_BUSINESS_CALL"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2552
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2554
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {v0}, Landroid/location/Location;->reset()V

    .line 2556
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 2557
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 2558
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object p0

    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getRadius()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/location/Location;->setAccuracy(F)V

    .line 2559
    const-string p0, "android.telephony.ims.extra.LOCATION"

    invoke-virtual {p1, p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static toImsCallProfile(Lorg/codeaurora/ims/EcnamInfo;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2522
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/EcnamInfo;->getIconUrl()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2524
    const-string v0, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unMuteStateReporting()V
    .locals 2

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call session state reporting unmuted. session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 529
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method private updateAudioQuality()Z
    .locals 6

    .line 542
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 543
    const-string v0, "updateAudioQuality this call session is closed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 546
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v2, :cond_5

    .line 547
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 548
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 550
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v3, 0x12

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v3, 0x13

    if-eq v2, v3, :cond_2

    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 557
    :goto_1
    iget v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 562
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v1

    .line 571
    :goto_2
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mOldAudioQuality:I

    if-eq v0, v5, :cond_6

    .line 572
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    iput v5, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    move v1, v4

    goto :goto_3

    :cond_5
    move v5, v1

    .line 578
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updateAudioQuality oldAudioQuality is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mOldAudioQuality:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " audioQuality is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    iput v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mOldAudioQuality:I

    return v1
.end method

.method private updateCallProgressExtra(IILjava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_2

    .line 2835
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p4, :cond_0

    move p2, v1

    :cond_0
    const-string v1, "CallProgRejectQ850Code"

    invoke-virtual {p1, v1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2838
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    const-string p1, "CallProgRejectQ850Text"

    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2841
    :cond_2
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isWfaType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2842
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p4, :cond_3

    move p1, v1

    :cond_3
    const-string p2, "CallProgWfaType"

    invoke-virtual {p0, p2, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    return-void

    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    .line 2845
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p4, :cond_5

    move p2, v1

    :cond_5
    const-string v1, "CallProgRejectSipCode"

    invoke-virtual {p1, v1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2848
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p4, :cond_6

    move-object p3, v0

    :cond_6
    const-string p1, "CallProgRejectSipText"

    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 v2, 0x5

    if-ne p1, v2, :cond_a

    .line 2852
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p4, :cond_8

    move p2, v1

    :cond_8
    const-string v1, "CallProgWarningCode"

    invoke-virtual {p1, v1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2855
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p4, :cond_9

    move-object p3, v0

    :cond_9
    const-string p1, "CallProgWarningText"

    invoke-virtual {p0, p1, p3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    if-eq p1, v1, :cond_b

    .line 2858
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "updateCallProgressExtra: Unknown call progress type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private updateCallTypeForCrsCall(Lorg/codeaurora/ims/DriverCallIms;Z)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2691
    :cond_0
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v4}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move v3, v0

    move v1, v5

    move v2, v1

    .line 2703
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v5, Landroid/telephony/ims/ImsCallProfile;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2705
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2707
    invoke-virtual {v5}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v5

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2708
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result v6

    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2709
    invoke-virtual {v7}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v7

    iget-object v8, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v8, v8, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 2706
    invoke-static {v5, v6, v7, v2, v8}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    .line 2705
    invoke-virtual {v4, v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2711
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "updateCallTypeForCrsCall: forceVoice="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    .line 2712
    const-string p1, ""

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, " originalCallType="

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " override VT-RX to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v0, :cond_3

    .line 2714
    const-string p1, "VT-BI"

    goto :goto_2

    :cond_3
    const-string p1, "Voice"

    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for video CRS call"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2711
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2717
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyCallTypeChanging(I)V

    .line 2719
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    return-void
.end method

.method private updateCrsStatus(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 5

    if-nez p1, :cond_0

    .line 3860
    const-string p1, "Null dcUpdate in updateCrsStatus"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3863
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_1

    .line 3864
    const-string p1, "Null mDc in updateCrsStatus"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3868
    :cond_1
    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iget-boolean v1, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 3869
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v4, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iput-boolean v4, v1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 3871
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 3872
    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/CrsData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3873
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CrsData;->setCrsType(I)V

    .line 3874
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CrsData;->setOriginalCallType(I)V

    move v0, v2

    .line 3878
    :cond_3
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_1

    .line 3879
    :cond_4
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    :goto_1
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    .line 3883
    :goto_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeInitCrsAudioOutputDeviceController(Lorg/codeaurora/ims/DriverCallIms;)V

    if-eqz v0, :cond_6

    .line 3886
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v3, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda5;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;ILorg/codeaurora/ims/DriverCallIms;)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3896
    invoke-direct {p0, p1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyCrsAudioOutputDeviceController(Lorg/codeaurora/ims/DriverCallIms;Z)V

    :cond_6
    return-void
.end method

.method private updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 2235
    const-string v1, "updateImsCallProfile called with dc null"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2239
    :cond_0
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v2, :cond_1

    .line 2240
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2245
    :cond_1
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v2, :cond_7

    .line 2246
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallMode(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result v2

    .line 2247
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {v6, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0x15

    if-ne v2, v8, :cond_2

    move v8, v5

    goto :goto_0

    :cond_2
    move v8, v4

    :goto_0
    if-eq v6, v8, :cond_3

    .line 2252
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2255
    :cond_3
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v6

    .line 2259
    iget-object v7, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v8, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v7, v8, :cond_6

    if-nez v6, :cond_6

    iget-object v7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v7, :cond_6

    .line 2262
    iget-object v6, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v6

    const/16 v7, 0xd

    if-eqz v6, :cond_5

    .line 2263
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isVoiceSupportedOverWifi()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_1
    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v7

    goto :goto_2

    .line 2267
    :cond_5
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isVideoSupportedOverWifi()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 2272
    :cond_6
    :goto_2
    iget-object v7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {v7, v8, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2275
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v7, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2276
    invoke-virtual {v7}, Lorg/codeaurora/ims/CallDetails;->isRadioTech5G()Z

    move-result v7

    .line 2275
    const-string v8, "isCall5G"

    invoke-virtual {v6, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_7
    move v2, v4

    .line 2284
    :goto_3
    iget-boolean v6, v1, Lorg/codeaurora/ims/DriverCallIms;->isEmergency:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_8

    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v6

    if-eq v6, v7, :cond_8

    .line 2287
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "e_call"

    invoke-virtual {v6, v8, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2289
    :cond_8
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "callReason"

    invoke-virtual {v6, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2290
    iget-object v9, v1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2291
    iget-object v6, v1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-object v6, v1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    .line 2296
    :cond_9
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v9, v1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2292
    :cond_a
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2293
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2294
    iget-object v8, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8, v6}, Lorg/codeaurora/ims/ImsCallUtils;->removeExtras(Landroid/os/Bundle;Ljava/util/List;)V

    .line 2299
    :cond_b
    :goto_5
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "oi"

    iget-object v9, v1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "cna"

    iget-object v9, v1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v8, v1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 2302
    invoke-static {v8}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v8

    .line 2301
    const-string v9, "oir"

    invoke-virtual {v6, v9, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2303
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v8, v1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 2304
    invoke-static {v8}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v8

    .line 2303
    const-string v9, "cnap"

    invoke-virtual {v6, v9, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2305
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v8, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v8, v8, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    const-string v9, "CallSubstate"

    invoke-virtual {v6, v9, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2307
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "CallEncryption"

    iget-boolean v9, v1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v6, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2309
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "updateImsCallProfile :: Packing encryption="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " in mCallProfile\'s extras."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2312
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateCallForwardInfoExtras(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2318
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v6, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2319
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-boolean v9, v1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    invoke-virtual {v6, v8, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2323
    :cond_c
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v8, "local_paused"

    invoke-virtual {v6, v8, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2325
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v9, "prev_call_type"

    invoke-virtual {v6, v9, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2334
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->isConfSupportIndicated()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2335
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2337
    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v10, v10, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v10}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2338
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->isVideoConfSupported()Z

    move-result v10

    goto :goto_6

    :cond_d
    move v10, v5

    .line 2335
    :goto_6
    const-string v11, "conference_avail"

    invoke-virtual {v6, v11, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2341
    :cond_e
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v6, v1}, Lorg/codeaurora/ims/ImsCallUtils;->hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v6, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2342
    :cond_f
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v10, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v10, v10, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    const-string v11, "SessionModificationCause"

    invoke-virtual {v6, v11, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2346
    :cond_10
    invoke-direct {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    .line 2347
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v10, "phoneId"

    iget v11, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v6, v10, v11}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2352
    iget-object v6, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, -0x1

    if-eqz v6, :cond_15

    if-eq v6, v5, :cond_14

    if-eq v6, v7, :cond_13

    if-eq v6, v13, :cond_12

    if-eq v6, v12, :cond_11

    move v6, v5

    :goto_7
    move v15, v14

    goto :goto_8

    .line 2375
    :cond_11
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v6

    move v15, v4

    goto :goto_8

    :cond_12
    move v6, v12

    move v15, v13

    goto :goto_8

    :cond_13
    move v15, v5

    const/4 v6, 0x6

    goto :goto_8

    :cond_14
    move v15, v7

    move v6, v11

    goto :goto_8

    :cond_15
    move v6, v7

    goto :goto_7

    .line 2382
    :goto_8
    iget-boolean v10, v1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v10, :cond_16

    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isVideoCrsFallback(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v10

    if-eqz v10, :cond_16

    move v6, v7

    goto :goto_9

    :cond_16
    move v14, v15

    .line 2388
    :goto_9
    iget-object v10, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v10, :cond_17

    move v10, v4

    goto :goto_a

    .line 2389
    :cond_17
    invoke-virtual {v10}, Lorg/codeaurora/ims/ImsCallModification;->isLocallyPaused()Z

    move-result v10

    .line 2390
    :goto_a
    iget-object v15, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v15, v8, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2392
    iget-object v8, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v8, :cond_18

    move v8, v4

    goto :goto_b

    .line 2393
    :cond_18
    invoke-virtual {v8}, Lorg/codeaurora/ims/ImsCallModification;->getPrevVideoCallType()I

    move-result v8

    :goto_b
    if-eq v8, v5, :cond_1b

    if-eq v8, v7, :cond_1a

    if-eq v8, v13, :cond_19

    goto :goto_c

    :cond_19
    move v7, v12

    goto :goto_c

    :cond_1a
    const/4 v7, 0x6

    goto :goto_c

    :cond_1b
    move v7, v11

    .line 2408
    :goto_c
    iget-object v8, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v8, v9, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2410
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateImsCallProfile locally_paused="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", prev_videocalltype="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2414
    iget-object v7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v8, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v8, v5, v6}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2417
    iget-object v5, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v5

    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2418
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v6

    iget-object v7, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v7}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v7

    .line 2419
    invoke-virtual {v7}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result v7

    iget-object v8, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v8

    iget-object v9, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v9, v9, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 2417
    invoke-static {v6, v7, v8, v14, v9}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2431
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v2

    if-ne v2, v3, :cond_1c

    .line 2433
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    invoke-direct {v0, v2, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    .line 2437
    :cond_1c
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 2439
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallUtils;->updateImsCallProfileVerstatInfo(Lorg/codeaurora/ims/VerstatInfo;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2440
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateImsCallProfile :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2444
    :cond_1d
    iget-object v2, v1, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toImsCallProfile(Lorg/codeaurora/ims/MultiIdentityLineInfo;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2446
    const-string v3, "incomingTir"

    iget-boolean v4, v1, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2450
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVideoCrsSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2451
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateCrsExtras(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2455
    :cond_1e
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCallProgressNotificationSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2460
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->isCallProgressInfoListSupported()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2461
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateExtrasByCallProgressInfo(Lorg/codeaurora/ims/DriverCallIms;)V

    goto :goto_d

    .line 2463
    :cond_1f
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateExtrasByCallProgressInfoList(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2465
    :goto_d
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateIsCalledPartyRingingExtra(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2469
    :cond_20
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateComputedAudioQualityExtras(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2472
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isDataChannelSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2473
    const-string v2, "DC is enabled and update modemCallId"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2474
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "modemCallId"

    .line 2476
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->getModemCallId()I

    move-result v4

    .line 2474
    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2480
    :cond_21
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVosSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2481
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2482
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallDetails;->getVosSupport()Z

    move-result v3

    .line 2481
    const-string v4, "isVosSupported"

    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 2486
    :cond_22
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVisualizedVoiceSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2487
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateUvsExtraAndCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2491
    :cond_23
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVideoCrbtSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2492
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateCrbtExtraAndCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2496
    :cond_24
    iget v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isGlassesFree3DVideoSupported(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2497
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2498
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallDetails;->getThreeDimensionalVideoType()I

    move-result v3

    .line 2497
    const-string v4, "GlassesFree3DVideoType"

    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2502
    :cond_25
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 2504
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toImsCallProfile(Lorg/codeaurora/ims/CallComposerInfo;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2509
    :cond_26
    invoke-virtual {v1}, Lorg/codeaurora/ims/DriverCallIms;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 2511
    iget-object v0, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toImsCallProfile(Lorg/codeaurora/ims/EcnamInfo;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_27
    return-void
.end method

.method private updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 3

    .line 506
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-eqz v0, :cond_1

    .line 512
    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    invoke-virtual {v0, p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->mayBeUpdateMultipartyState(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 515
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/DriverCallIms;->update(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    move v1, p1

    .line 517
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateLocalDc is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method public static updateMediaProfileAudioDirection(Landroid/telephony/ims/ImsCallProfile;Z)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 1245
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 1248
    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    .line 1250
    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v2

    .line 1251
    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v3

    .line 1252
    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v0

    .line 1247
    invoke-static {v1, p1, v2, v3, v0}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    .line 1253
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-object p1
.end method


# virtual methods
.method public accept(IILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3

    .line 3366
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3368
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: rttMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIR presentation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3370
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3371
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result p1

    .line 3370
    invoke-virtual {v0, v1, p0, p2, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;III)V

    return-void
.end method

.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    .line 3351
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: rttMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3354
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->accept(IILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public answerDualVtRequest(Landroid/os/Message;ZI)V
    .locals 0

    .line 4541
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->answerDualVtRequest(Landroid/os/Message;ZI)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1766
    const-string v0, "Close!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1767
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0xb

    .line 1768
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 4

    .line 3409
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3411
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    .line 3412
    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3411
    invoke-virtual {v0, v1, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->deflectCall(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public dualVtRequest(Landroid/os/Message;I)V
    .locals 0

    .line 4537
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->dualVtRequest(Landroid/os/Message;I)V

    return-void
.end method

.method public enableArMode(Ljava/lang/String;)V
    .locals 2

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableArMode for cameraId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->enableArMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    return-void

    .line 1075
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 0

    .line 3653
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    return-void
.end method

.method public getCallAddress()Ljava/lang/String;
    .locals 4

    .line 4681
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4683
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAddress: callProfile is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 4686
    :cond_0
    const-string v2, "oi"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4687
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAddress: handle is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCallDomain()I
    .locals 2

    .line 1903
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 1906
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_1

    .line 1907
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    return p0

    :cond_1
    return v1
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 1778
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1779
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCallIdInt()I
    .locals 0

    .line 1783
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    return p0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1814
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1815
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->copyImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .line 1932
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1933
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object p0
.end method

.method public getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;
    .locals 1

    .line 3918
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3919
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    return-object p0
.end method

.method public getDcState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1918
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    .line 1919
    iget-object p0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1921
    :cond_0
    const-string v0, "Null mDc! Returning null!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1937
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1938
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 4565
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;
    .locals 1

    .line 458
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 459
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    return-object p0
.end method

.method public bridge synthetic getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;
    .locals 0

    .line 116
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    return-object p0
.end method

.method public getImsVideoCallProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 2

    .line 3782
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3784
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_1

    .line 3785
    const-string v0, "getImsVideoCallProvider: Video call provider is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getImsVideoCallProvider2()Lcom/qualcomm/ims/vt/ImsVideoCallProvider;
    .locals 1

    .line 435
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 436
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    return-object p0
.end method

.method public getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 430
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 431
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    return-object p0
.end method

.method public getInternalCallType()I
    .locals 2

    .line 1891
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_0

    return v1

    .line 1894
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_1

    .line 1895
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    return p0

    .line 1896
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p0, :cond_2

    .line 1897
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1875
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1878
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    .line 1879
    iget-object p0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1880
    :cond_1
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 1881
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1824
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1825
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->copyImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public getMediaId()I
    .locals 2

    .line 1793
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1794
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    return p0

    :cond_1
    return v1
.end method

.method public getPendingModifyCall()Lorg/codeaurora/ims/CallModify;
    .locals 0

    .line 4643
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4646
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->getPendingModify()Lorg/codeaurora/ims/CallModify;

    move-result-object p0

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 1887
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    return p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1844
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1848
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_1

    .line 1849
    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1851
    :cond_1
    const-string p1, "Call Profile null! "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1834
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1835
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->copyImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 1865
    invoke-super {p0}, Lorg/codeaurora/ims/QImsSessionBase;->getState()I

    move-result p0

    return p0
.end method

.method public getTokenId()I
    .locals 0

    .line 4574
    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mToken:I

    return p0
.end method

.method public getVideoCallProvider(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;
    .locals 1

    .line 440
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 442
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    return-object p0

    .line 444
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/qualcomm/ims/vt/ImsVideoCallProvider;

    return-object p0
.end method

.method public handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hoType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "srcTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1398
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1400
    :cond_0
    invoke-direct {p0, p6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->parseErrorCode(Ljava/lang/String;)I

    move-result p6

    .line 1401
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result p2

    .line 1402
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result p3

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 p4, 0x4

    if-eq p1, p4, :cond_2

    const/4 p4, 0x5

    if-eq p1, p4, :cond_1

    .line 1440
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unhandled hoType: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1437
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMayHandover(II)V

    return-void

    .line 1432
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 1433
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, p6, v0, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p2, p3, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1421
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "HO Failure for WWAN->IWLAN "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1422
    invoke-static {p5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1421
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p4, v1, :cond_4

    .line 1424
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string p4, "handoverInfo"

    invoke-virtual {p1, p4, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1427
    :cond_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 1428
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, p6, v0, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p2, p3, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1408
    :cond_5
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance p4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p4, p6, v0, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    const/16 p1, 0x12

    if-ne p2, p1, :cond_6

    const/16 p1, 0xd

    if-ne p3, p1, :cond_6

    .line 1416
    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method public handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3

    .line 1375
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    if-eqz v0, :cond_0

    .line 1377
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retry Error Notify "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1378
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CsRetryReasonCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1380
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 1381
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "CsRetryReasonCode"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1383
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x7f010000

    .line 1384
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1386
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "LTE HD voice is unavailable. 3G voice call will be connected.SIP Error code: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1388
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .line 1804
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1805
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p0}, Lorg/codeaurora/ims/CallDetails;->hasMediaIdValid()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public hasUserMarkedCallUnwanted()Z
    .locals 1

    .line 3477
    const-string p0, "persist.vendor.radio.debug.mark_unwanted_call"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    .line 3576
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3578
    :cond_0
    const-string p1, "hold requested."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3579
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget p0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {p1, v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->hold(Landroid/os/Message;I)V

    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 1

    .line 3699
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 3701
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 3705
    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 3702
    :cond_2
    :goto_0
    const-string p1, "inviteParticipants: empty participants"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public isCallActive()Z
    .locals 2

    .line 3399
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3400
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object p0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isDualVideoCall()Z
    .locals 2

    .line 4517
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 4519
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result p0

    .line 4517
    const-string v1, "dualVtCallType"

    invoke-virtual {v0, v1, p0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x1b

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isImsCallSessionAlive()Z
    .locals 2

    .line 1702
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInCall()Z
    .locals 2

    .line 1959
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1962
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMergeHostSession()Z
    .locals 0

    .line 4381
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsMergeHostSession:Z

    return p0
.end method

.method public isMultiparty()Z
    .locals 2

    .line 1947
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1948
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p0, :cond_3

    const-string v0, "android.telephony.ims.extra.CONFERENCE"

    .line 1950
    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public isMultipartyCall()Z
    .locals 2

    .line 1913
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1914
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    return p0

    :cond_1
    return v1
.end method

.method public isPreparatorySession(Ljava/lang/String;)Z
    .locals 2

    .line 3851
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 3854
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    return p0

    :cond_1
    return v1
.end method

.method public maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2

    .line 940
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 942
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    move-result p0

    return p0
.end method

.method public merge()V
    .locals 3

    .line 3602
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3605
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v0, :cond_1

    .line 3606
    const-string v0, "merge request is already in progress, ignore this merge request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3610
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-nez v0, :cond_3

    .line 3611
    const-string v0, "ConferenceController is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3612
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_2

    .line 3613
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 3620
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMergeHostSession(Z)V

    .line 3623
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3624
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getMergeCallList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3625
    sget-object v2, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3627
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "merge mLocalParticipants "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3632
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsConferenceController;->sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    return-void
.end method

.method public notifyConfInfo([B)V
    .locals 1

    .line 3901
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3903
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->updateConfXmlBytes([B)V

    .line 3904
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/ConfInfo;->getConfUriList()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 3905
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->restoreUnknownParticipants()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 3906
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz p1, :cond_1

    .line 3907
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyIncomingDtmf(ZLjava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 4407
    const-string p1, "notifyIncomingDtmf: dtmf is null!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4410
    :cond_0
    const-string v0, "IncomingDtmfInfo"

    if-eqz p1, :cond_1

    .line 4411
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "notifyIncomingDtmf: Adding MT dtmf extra with digit = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4412
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v0, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4414
    :cond_1
    const-string p1, "notifyIncomingDtmf: Removing MT dtmf extra"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4415
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4416
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4417
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/codeaurora/ims/ImsCallUtils;->removeExtras(Landroid/os/Bundle;Ljava/util/List;)V

    .line 4419
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    return-void
.end method

.method public notifyIncomingRttVtCallUpgrade()V
    .locals 1

    .line 4637
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 4638
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyIncomingRttVtCallUpgrade()V

    :cond_0
    return-void
.end method

.method public notifyReceivedRttMessage(Ljava/lang/Object;)V
    .locals 2

    .line 4275
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4276
    const-string p1, "RTT: notifyReceivedRttMessage not allowed."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4280
    :cond_0
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    .line 4283
    const-string p1, "notifyReceivedRttMessage rtt msg null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4287
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_2

    .line 4288
    const-string p1, "notifyReceivedRttMessage ListenerProxy null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4292
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: notifyReceivedRttMessage rttMessage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4293
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttMessageReceived(Ljava/lang/String;)V

    return-void
.end method

.method public notifyRttModifyRequest(Lorg/codeaurora/ims/CallDetails;)V
    .locals 2

    .line 4258
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4260
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_1

    .line 4261
    const-string p1, "RTT: notifyRttModifyRequest ListenerProxy null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4265
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: notifyRttModifyRequest rttMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4267
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 4268
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 4270
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public notifyRttModifyResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    .line 4298
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4302
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 4303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: modify request exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4304
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 4309
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_2

    .line 4310
    const-string p1, "notifyRttModifyResponse ListenerProxy null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4314
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: notifyRttModifyResponse status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4315
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttModifyResponseReceived(I)V

    return-void
.end method

.method public notifySrtpEncryptionUpdate(I)V
    .locals 2

    .line 4428
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_0

    .line 4429
    const-string p1, "mCallProfile is null!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4432
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_1

    .line 4433
    const-string p1, "mCallbackHandler is null!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4436
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "srtpEncryptionCategory"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 4437
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result p1

    .line 4438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifySrtpEncryptionUpdate: isCallSessionUpdated - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public notifyTtyModeChange(I)V
    .locals 2

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTY mode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1366
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    .line 1368
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTtyModeReceived(I)V

    return-void

    .line 1370
    :cond_1
    const-string p1, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public notifyVoiceInfoChanged(I)V
    .locals 3

    .line 4482
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4488
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4489
    :goto_0
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setReceivingRttAudio(Z)V

    .line 4491
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RTT: notifyVoiceInfoChanged voiceInfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4492
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void

    .line 4483
    :cond_2
    :goto_1
    const-string p1, "notifyVoiceInfoChanged Session invalid/not active/mCallbackHandler null Return"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAbortConferenceCompleted(Z)V
    .locals 9

    .line 4358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAbortConferenceCompleted isSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4359
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    if-eqz p1, :cond_0

    .line 4360
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getCallee()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4361
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getEmergencyCallInfo()Lorg/codeaurora/ims/EmergencyCallInfo;

    move-result-object v2

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4362
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getClir()I

    move-result v3

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4363
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getCallDetails()Lorg/codeaurora/ims/CallDetails;

    move-result-object v4

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4364
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getIsEncrypted()Z

    move-result v5

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4365
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v6

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 4366
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->getRedialInfo()Lorg/codeaurora/ims/RedialInfo;

    move-result-object v7

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    .line 4367
    invoke-virtual {p1, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4360
    invoke-virtual/range {v0 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Landroid/os/Message;)V

    .line 4370
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;->resetPendingEmergencyCallInfo()V

    :cond_0
    const/4 p1, 0x0

    .line 4372
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    return-void
.end method

.method public onCallDataUsageChanged(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 1

    .line 4836
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->onCallDataUsageChanged(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    return-void
.end method

.method public onConferenceParticipantStateChanged(Z)V
    .locals 2

    .line 4386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConferenceParticipantStateChanged isMultiParty : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4388
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v0, :cond_0

    .line 4389
    const-string p1, "onConferenceParticipantStateChanged: merge is in progress"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4393
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    .line 4394
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMultipartyStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public onConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V
    .locals 2

    .line 4332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConferenceStateChanged ConferenceState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4335
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$ImsConferenceController$ConferenceState:[I

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    .line 4349
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMergeHostSession(Z)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 4342
    sget-object p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4345
    :cond_2
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMergeHostSession(Z)V

    .line 4346
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->unMuteStateReporting()V

    return-void

    .line 4337
    :cond_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->muteStateReporting()V

    return-void
.end method

.method public onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_0

    .line 450
    const-string p1, "onReceivedModifyCall: Ignoring session modification request."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 453
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 0

    .line 4839
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_0

    .line 4840
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onRequestCallDataUsage()V

    :cond_0
    return-void
.end method

.method public reject(I)V
    .locals 8

    .line 3381
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3383
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reject "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3386
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isLowBatteryVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    if-eqz v0, :cond_1

    .line 3387
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 3388
    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x1f9

    goto :goto_0

    .line 3391
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeOverrideReason(I)I

    move-result p1

    :goto_0
    move v5, p1

    const/16 p1, 0x8f

    .line 3393
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 3394
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    .line 3395
    invoke-virtual {p1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3394
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public removeCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 3822
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3823
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 3825
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeCrsCrbtListener error: Duplicate listener, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3820
    :cond_1
    const-string p0, "listener is null"

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 8

    .line 3730
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3731
    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 3734
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mShouldRestoreParticipant:Z

    if-eqz p1, :cond_2

    .line 3735
    sget-object p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRestoreMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3737
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3738
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 3744
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    .line 3745
    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1f5

    const/4 v6, 0x0

    .line 3744
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1994
    const-string v0, "Calling callSessionMergeStarted"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1995
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1996
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 1995
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeStarted(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    return-void

    .line 1998
    :cond_0
    const-string p1, "Null confCallSession! Not calling callSessionMergeStarted"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    .line 3590
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3592
    :cond_0
    const-string p1, "resume requested."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3593
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget p0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {p1, v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->resume(Landroid/os/Message;I)V

    return-void
.end method

.method public resumePendingCall(I)V
    .locals 3

    .line 3228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resumePendingCall VideoState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3230
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x1

    .line 3231
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 3230
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3232
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3

    .line 3757
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3758
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendDtmf(ICLandroid/os/Message;)V

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3

    .line 4151
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4152
    const-string p1, "RTT: sendRttMessage not allowed."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4156
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendRttMessage(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4

    .line 4161
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    .line 4170
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_0

    .line 4162
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "RTT: sendRttModifyRequest returning early, session invalid. mImsCallModification "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 4171
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallModification;->isOutgoingRttVtUpgradeInProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4172
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "RTT: sendRttModifyRequest suppressed by pending RTT+VT dual upgrade. mImsCallModification "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4174
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->onRttModifyRequestSuppressed()V

    return-void

    .line 4179
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 4183
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 4184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RTT: sendRttModifyRequest mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4186
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 4187
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 4189
    :cond_2
    const-string p0, "mRttMode is invalid."

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 4192
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Lorg/codeaurora/ims/CallModify;

    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-direct {v2, v0, p0}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    invoke-virtual {p1, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 4

    .line 4205
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_0

    .line 4206
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->getPendingIncomingRttVtUpgradeFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4212
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 4214
    new-instance v1, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 4215
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v2

    iput v2, v1, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 4216
    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v2, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v2, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 4218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RTT: sendRttModifyResponse response = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4219
    iget-object v0, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapResponseToMode(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 4221
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    return-void

    .line 4207
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RTT: sendRttModifyResponse returning early, isSessionValid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4208
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mImsCallModification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4207
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public sendSipDtmf(Ljava/lang/String;)V
    .locals 2

    .line 3845
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3846
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendSipDtmf(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setAnswerExtras(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 590
    const-string v0, "tirConfig"

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    :cond_0
    return-void
.end method

.method public setArListener(Lorg/codeaurora/ims/internal/IImsArListener;)V
    .locals 1

    .line 1060
    const-string v0, "setArListener"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    .line 1062
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz p1, :cond_0

    .line 1063
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getNegotiatedFps()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateRecorderFrameRate(I)V

    :cond_0
    return-void
.end method

.method public setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V
    .locals 1

    .line 3912
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3914
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    return-void
.end method

.method public setCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 3795
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3796
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3798
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCrsCrbtListener error: Duplicate listener, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3801
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3809
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda3;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 3793
    :cond_1
    const-string p0, "listener is null"

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public setDualVtCallExtra(Z)V
    .locals 2

    .line 4501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDualVtCallExtra: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4502
    const-string v0, "dualVtCallType"

    if-eqz p1, :cond_0

    .line 4503
    const-string p1, "setting dual vt call extra to dual bidir"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4504
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4508
    :cond_0
    const-string p1, "setting dual vt call extra to audio only"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4509
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 4513
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    return-void
.end method

.method public setEmergencyServiceCategoryInProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 597
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-nez v0, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object p1, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v1, "EmergencyServiceCategory"

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Emergency service category:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 598
    :cond_2
    :goto_0
    const-string p1, "Driver call or call Details is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setImsVideoCallProviderImpl(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;)V
    .locals 0

    .line 4497
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 2

    .line 3259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setListener: listener = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3260
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3261
    :cond_0
    invoke-super {p0, p1}, Lorg/codeaurora/ims/QImsSessionBase;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    .line 3262
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setLocalRenderingDelay(I)V
    .locals 2

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLocalRenderingDelay"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1082
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_0

    .line 1083
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->setLocalRenderingDelay(I)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .line 1981
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    return-void
.end method

.method public setPendingOutgoingRttVtModifyFlag()V
    .locals 1

    .line 4628
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4633
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->onOutgoingDualRttVtUpgrade()V

    return-void

    .line 4629
    :cond_1
    :goto_0
    const-string v0, "setPendingOutgoingRttVtModifyFlag: Ignoring session modification request."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenShareListener(Lorg/codeaurora/ims/internal/IImsScreenShareListener;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 3019
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3021
    :cond_0
    iget-object v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3022
    iget-object v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3023
    iget-object v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    const/4 v2, 0x1

    .line 3025
    iput v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    move-object/from16 v4, p1

    .line 3026
    iput-object v4, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 3030
    const-string v3, "oir"

    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v6

    .line 3032
    iget-object v5, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 3033
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v7

    .line 3032
    invoke-virtual {v5, v3, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3036
    const-string v5, "persist.dbg.call_encrypt_ovr"

    const/4 v12, 0x0

    invoke-static {v5, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v12

    .line 3043
    :goto_0
    iget-object v7, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 3048
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getProprietaryCallExtras()Landroid/os/Bundle;

    move-result-object v7

    if-nez v5, :cond_2

    if-eqz v7, :cond_2

    .line 3052
    const-string v5, "CallEncryption"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 3053
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v8, v5

    .line 3068
    :goto_1
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getLineInfo(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v5

    .line 3069
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MultiIdentity Line info in Dial Request :: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v9

    invoke-direct {v1, v9}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v9

    .line 3081
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v10

    .line 3080
    invoke-direct {v1, v9, v10}, Lorg/codeaurora/ims/ImsCallSessionImpl;->adjustCallTypeForRttCompatibility(II)I

    move-result v9

    .line 3082
    new-instance v10, Lorg/codeaurora/ims/CallDetails;

    const/4 v11, 0x3

    const/4 v13, 0x0

    invoke-direct {v10, v9, v11, v13, v5}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;Lorg/codeaurora/ims/MultiIdentityLineInfo;)V

    .line 3085
    invoke-direct {v1, v7, v10}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallExtrasIntoCallDetails(Landroid/os/Bundle;Lorg/codeaurora/ims/CallDetails;)V

    .line 3087
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "RTT: start rtt mode = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v5

    invoke-virtual {v10, v5}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 3089
    const-string v5, "CallPull"

    invoke-virtual {v0, v5, v12}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v10, v5}, Lorg/codeaurora/ims/CallDetails;->setCallPull(Z)V

    .line 3091
    invoke-direct {v1, v10}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCarrierOneDial(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3093
    iget-object v7, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 3094
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v9

    .line 3093
    invoke-virtual {v7, v3, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3095
    iget-object v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "cnap"

    .line 3096
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v9

    .line 3095
    invoke-virtual {v3, v7, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3103
    :cond_3
    iget-object v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "phoneId"

    iget v9, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v3, v7, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3106
    iget-object v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    if-eqz v5, :cond_4

    .line 3107
    iget-boolean v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v3, :cond_4

    .line 3110
    const-string v0, "defer low battery video call dial request"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3114
    :cond_4
    invoke-direct {v1, v10}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canDial(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v0, 0x70

    .line 3115
    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    return-void

    :cond_5
    const v3, 0x7f010004

    .line 3119
    invoke-direct {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v10, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 3120
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 3121
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallNumValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v0, 0x96

    .line 3122
    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    return-void

    .line 3126
    :cond_6
    const-string v3, "android.telephony.ims.extra.RETRY_CALL_FAIL_REASON"

    invoke-virtual {v0, v3, v12}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v3

    .line 3129
    const-string v5, "android.telephony.ims.extra.RETRY_CALL_FAIL_NETWORKTYPE"

    invoke-virtual {v0, v5, v12}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v5

    .line 3132
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "start: retryCallFailCause = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " retryCallFailNetworkType = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3134
    new-instance v7, Lorg/codeaurora/ims/RedialInfo;

    .line 3135
    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallModeFromRadioTech(I)I

    move-result v5

    invoke-direct {v7, v3, v5}, Lorg/codeaurora/ims/RedialInfo;-><init>(II)V

    .line 3138
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v3

    const/4 v5, 0x2

    const/4 v9, 0x0

    if-ne v3, v5, :cond_9

    .line 3139
    new-instance v14, Lorg/codeaurora/ims/EmergencyCallInfo;

    .line 3140
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v15

    .line 3141
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v16

    .line 3142
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v17

    .line 3143
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v18

    .line 3144
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->hasKnownUserIntentEmergency()Z

    move-result v19

    invoke-direct/range {v14 .. v19}, Lorg/codeaurora/ims/EmergencyCallInfo;-><init>(ILjava/util/List;IZZ)V

    .line 3146
    iget-object v0, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConferenceController;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3147
    iget-object v0, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    if-nez v0, :cond_7

    .line 3148
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    move-object v2, v4

    move v4, v6

    move-object v6, v9

    move-object v5, v10

    move-object v3, v14

    invoke-direct/range {v0 .. v8}, Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Z)V

    iput-object v0, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingEmergencyCallInfo:Lorg/codeaurora/ims/ImsCallSessionImpl$PendingEmergencyCallInfo;

    .line 3157
    :cond_7
    iget-object v0, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-virtual {v0, v12}, Lorg/codeaurora/ims/ImsConferenceController;->sendAbortConferenceRequest(I)V

    return-void

    :cond_8
    move-object v13, v14

    :cond_9
    move v4, v6

    move-object v6, v9

    move-object v5, v10

    .line 3162
    iget-object v3, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 3163
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object v9, v6

    move-object v10, v7

    move v6, v4

    move-object v7, v5

    move-object v5, v13

    move-object/from16 v4, p1

    .line 3162
    invoke-virtual/range {v3 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Landroid/os/Message;)V

    .line 3165
    iput-boolean v12, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 8

    .line 3309
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3311
    :cond_0
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x1

    .line 3312
    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 3315
    array-length v1, p1

    const/4 v2, 0x0

    const-string v3, ""

    move-object v4, v3

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v5, p1, v2

    add-int/2addr v3, v0

    .line 3317
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 3320
    :cond_1
    array-length v6, p1

    if-ne v3, v6, :cond_2

    .line 3321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3323
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3326
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 3327
    iput-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 3329
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "startConference mCallee = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3332
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3333
    const-string v1, "isConferenceUri"

    .line 3334
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 3333
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3335
    invoke-static {p1}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p1

    .line 3336
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 3337
    new-instance v5, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result p2

    const/4 v1, 0x3

    invoke-direct {v5, p2, v1, p1}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 3339
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 3340
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3339
    invoke-virtual/range {v1 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 2

    .line 3769
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3770
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->startDtmf(ICLandroid/os/Message;)V

    return-void
.end method

.method public startScreenShare(II)V
    .locals 2

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startScreenShare: width - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_0

    .line 1048
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->setSharedDisplayParams(II)V

    :cond_0
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 3777
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3778
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->stopDtmf(ILandroid/os/Message;)V

    return-void
.end method

.method public stopScreenShare()V
    .locals 1

    .line 1053
    const-string v0, "stopScreenShare"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->stopScreenShare()V

    :cond_0
    return-void
.end method

.method public terminate(I)V
    .locals 10

    .line 3537
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3538
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isTerminateLowBatteryCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "terminate: fail deferred low battery video call with reason = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3542
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    return-void

    .line 3545
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "terminate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1f9

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 3550
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    goto :goto_0

    .line 3552
    :cond_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeOverrideReason(I)I

    move-result p1

    :goto_0
    move v7, p1

    const/16 p1, 0x1f5

    .line 3554
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 3557
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    if-nez p1, :cond_3

    .line 3558
    const-string p1, "Holding terminate call with invalid ID."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3559
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 3562
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsPendingHangup:Z

    .line 3565
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 3566
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 3565
    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 0

    .line 3997
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3991
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " callid= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLocalCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRemoteCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 2

    .line 3436
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3437
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3438
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    .line 3439
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 3441
    new-instance v1, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lcom/android/ims/internal/IImsCallSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 7

    .line 3423
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3426
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    .line 3427
    invoke-virtual {v0, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/4 v5, 0x0

    move-object v4, p1

    move v3, p2

    .line 3426
    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    .line 3643
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    return-void
.end method

.method public updateCall(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 7

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateCall for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 621
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 622
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 623
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyCallTypeChanging(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 624
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setEmergencyServiceCategoryInProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 626
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_1

    .line 627
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->update(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 630
    :cond_1
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "incomingConference"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 635
    :cond_2
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const/16 v0, 0x8

    .line 730
    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 732
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 733
    invoke-static {v0, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x70

    goto :goto_0

    .line 735
    :cond_3
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    .line 736
    :goto_0
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-virtual {v3}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->getCode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 737
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->getCode()I

    move-result v0

    .line 740
    :cond_4
    iget v3, p1, Lorg/codeaurora/ims/DriverCallIms;->mAdditionalCallFailCause:I

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isIntelligentCallingCallFailCause(I)Z

    move-result v3

    .line 746
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 747
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    .line 746
    invoke-static {v5, v6}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isIntelligentCallingFeatureEnabled(Landroid/content/ContentResolver;I)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v3, :cond_6

    :cond_5
    if-nez v0, :cond_7

    if-nez v3, :cond_7

    .line 751
    :cond_6
    iget v3, p1, Lorg/codeaurora/ims/DriverCallIms;->mAdditionalCallFailCause:I

    goto :goto_1

    :cond_7
    move v3, v0

    .line 753
    :goto_1
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v6, "CallFailExtraCode"

    invoke-virtual {v5, v6, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 755
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CALL_FAIL_EXTRA_CODE finalErrorCode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x95

    if-ne v0, v3, :cond_8

    .line 758
    const-string v0, "Call was ended as LTE to 3G/2G handover was not feasible."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Sip callFailCause:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez v0, :cond_14

    if-eqz p1, :cond_15

    .line 763
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_15

    .line 766
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v3, :cond_a

    :cond_9
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 769
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->IsMultiEndpointCallEndCause(Landroid/telephony/ims/ImsReasonInfo;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 770
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isUserRejectedFailCause(Landroid/telephony/ims/ImsReasonInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 771
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v3, 0x1f5

    if-ne v0, v3, :cond_c

    .line 773
    :cond_b
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 775
    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 776
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fe

    invoke-direct {v0, v4, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 777
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 779
    :cond_c
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v3, 0x141

    if-ne v0, v3, :cond_d

    .line 783
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    const-string v4, "sipAlternateUri"

    invoke-virtual {v0, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 787
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 788
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 785
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 792
    :cond_d
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 793
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 794
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RTP inactivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 795
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Call is dropped as WiFi is lost"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 796
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Call is dropped due to Wi-Fi signal is degraded"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 797
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CD-11: Wi-Fi signal lost"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 798
    :cond_e
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x192

    iput v3, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 802
    :cond_f
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 803
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 804
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CD-021: ISP Problem"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 805
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Call is dropped due to Wi-Fi backhaul is congested"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 806
    :cond_10
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x515

    iput v3, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 810
    :cond_11
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v0, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    const/16 v3, 0x4f

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 813
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v0

    if-ne v0, v2, :cond_12

    .line 815
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x79

    iput v2, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 819
    :cond_12
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 821
    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    if-ne v2, v4, :cond_13

    .line 822
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 824
    :cond_13
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 829
    :cond_14
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_15

    .line 830
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 831
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 832
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    :cond_15
    :goto_2
    const/4 v0, 0x0

    .line 837
    :goto_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->cleanupCrsAudioOutputDeviceController()V

    .line 838
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreatePendingEndCallReason(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 839
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    goto/16 :goto_7

    .line 724
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCrsStatus(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 727
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_7

    .line 705
    :pswitch_3
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 706
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_16

    .line 707
    const-string v0, "MO Alerting call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 710
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doneTerminate()Z

    goto :goto_4

    .line 711
    :cond_16
    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v2, :cond_17

    .line 713
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 714
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    invoke-static {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMediaProfileAudioDirection(Landroid/telephony/ims/ImsCallProfile;Z)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 716
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v2, :cond_17

    .line 717
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 720
    :cond_17
    :goto_4
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_7

    .line 689
    :pswitch_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_18

    .line 690
    const-string v0, "MO Dialing call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 693
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doneTerminate()Z

    .line 694
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(II)Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 697
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_18

    .line 698
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V

    .line 701
    :cond_18
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_7

    .line 677
    :pswitch_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v2, :cond_1a

    .line 678
    const-string v0, "Call being held."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_1a

    .line 680
    :cond_19
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    .line 683
    :cond_1a
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateDualVtExtraToAudioOnly(I)V

    .line 685
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionHold()V

    goto/16 :goto_7

    .line 637
    :pswitch_6
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v2, 0x4

    if-nez v0, :cond_1b

    .line 639
    const-string v0, "Phantom call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 641
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 642
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_1f

    .line 644
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doneTerminate()Z

    .line 645
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_6

    .line 647
    :cond_1b
    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_1e

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_1e

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_1e

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v3, :cond_1c

    goto :goto_5

    .line 660
    :cond_1c
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_1d

    .line 661
    const-string v0, "Call being resumed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_1f

    .line 664
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_6

    .line 667
    :cond_1d
    const-string v0, "Call resumed skipped"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 651
    :cond_1e
    :goto_5
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 652
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 654
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 655
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_1f

    .line 656
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 670
    :cond_1f
    :goto_6
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->cleanupCrsAudioOutputDeviceController()V

    .line 671
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateDualVtExtraToAudioOnly(I)V

    .line 673
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionActive()V

    .line 843
    :goto_7
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_20

    const/4 v1, 0x1

    .line 846
    :cond_20
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    .line 847
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateAudioQuality()Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz v0, :cond_21

    .line 850
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    :cond_21
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 2

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateConfSession for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1262
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    iget-boolean p1, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 1263
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1264
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget p1, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDualVtSupport(ZI)V
    .locals 2

    .line 4547
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateDualVtSupport: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4548
    iput p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDualVideoCapability:I

    if-eqz p1, :cond_0

    .line 4549
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mToken:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 4550
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 4551
    invoke-static {}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getToken()I

    move-result p1

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mToken:I

    .line 4552
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v0, "token"

    invoke-virtual {p2, v0, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 4553
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string p2, "dualVtCapability"

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDualVideoCapability:I

    invoke-virtual {p1, p2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 4555
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    :cond_0
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 2

    .line 3924
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateFeatureCapabilities video "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " voice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3925
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3927
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eq v0, p2, :cond_2

    .line 3928
    :cond_1
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 3929
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 3930
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq p2, v0, :cond_2

    .line 3931
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 3932
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 3933
    iget-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz p1, :cond_2

    .line 3934
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 3935
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    .line 3934
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 1

    .line 1127
    const-string v0, "updateLowBatteryStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    :cond_0
    return-void
.end method

.method public updateOrientationMode(I)V
    .locals 2

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateOrientationMode: orientation mode - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "OrientationMode"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 948
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object p1

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne p1, v0, :cond_0

    .line 949
    const-string p1, "updateOrientationMode: mDc is null and in dialing state "

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 952
    :cond_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result p1

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateOrientationMode: isCallSessionUpdated - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateRecorderFrameRate(I)V
    .locals 3

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " updateRecorderFrameRate : rate - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1005
    :cond_0
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Lorg/codeaurora/ims/internal/IImsArListener;->onRecorderFrameRateChanged(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1007
    :catchall_0
    const-string p1, " onRecorderFrameRateChanged exception!"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1000
    :cond_1
    :goto_0
    const-string p1, "updateRecorderFrameRate: is not valid call or updateRecorderFrameRate is NULL"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateRecordingDisabled()V
    .locals 3

    .line 1027
    const-string v0, " updateRecordingDisabled "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1035
    :cond_0
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/internal/IImsArListener;->onRecordingDisabled(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1037
    :catchall_0
    const-string v0, " updateRecordingDisabled exception!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1030
    :cond_1
    :goto_0
    const-string v0, "updateRecordingDisabled: is not valid call or mArListener is NULL"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateRecordingEnabled()V
    .locals 3

    .line 1012
    const-string v0, " updateRecordingEnabled "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/internal/IImsArListener;->onRecordingEnabled(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1022
    :catchall_0
    const-string v0, " updateRecordingEnabled exception!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1015
    :cond_1
    :goto_0
    const-string v0, "updateRecordingEnabled: is not valid call or mArListener is NULL"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateRecordingSurface(Landroid/view/Surface;II)V
    .locals 9

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateRecordingSurface: recording surface - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " width - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_5

    .line 960
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    if-nez v1, :cond_0

    goto :goto_3

    .line 966
    :cond_0
    const-string v1, "onRecordingSurfaceChanged exception!"

    if-eqz v0, :cond_1

    .line 968
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-interface {v0, v2, p1, p2, p3}, Lorg/codeaurora/ims/internal/IImsScreenShareListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 971
    :catchall_0
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    if-eqz v0, :cond_4

    .line 976
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    .line 977
    invoke-static {v0, v2, p2, p3}, Lcom/qualcomm/ims/vt/CameraUtil;->calculateArPreviewSize(Landroid/content/Context;Ljava/lang/String;II)Landroid/util/Size;

    move-result-object p2

    if-nez p2, :cond_2

    .line 979
    const-string p1, "calculatedSize is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 984
    :cond_2
    :try_start_1
    iget-object p3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz p3, :cond_3

    .line 985
    invoke-virtual {p3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getArPreviewSurface()Landroid/view/Surface;

    move-result-object p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    move-object v8, p3

    .line 986
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mArListener:Lorg/codeaurora/ims/internal/IImsArListener;

    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    .line 987
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 988
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v6

    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCameraId:Ljava/lang/String;

    move-object v4, p1

    .line 986
    invoke-interface/range {v2 .. v8}, Lorg/codeaurora/ims/internal/IImsArListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;IILjava/lang/String;Landroid/view/Surface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 991
    :catchall_1
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    .line 961
    :cond_5
    :goto_3
    const-string p1, "updateRecordingSurface: is not valid call or mScreenSharelistener is NULL"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V
    .locals 6

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1292
    :cond_0
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    if-nez v0, :cond_1

    .line 1293
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void

    .line 1294
    :cond_1
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1296
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMtSuppSvcCode(I)V

    .line 1298
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    const/4 v2, 0x2

    const/4 v3, 0x7

    if-eq v0, v2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    .line 1344
    const-string p2, "Non-Hold/Resume supp svc code received."

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1345
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void

    .line 1325
    :cond_2
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result p1

    if-nez p1, :cond_3

    .line 1327
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1328
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p2

    .line 1329
    invoke-virtual {p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result p2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1330
    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1331
    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v2

    .line 1328
    invoke-static {p2, v0, v1, v2}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p2

    .line 1327
    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1333
    :cond_3
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1335
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1336
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 1338
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 1302
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1303
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p2

    .line 1304
    invoke-virtual {p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result p2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1305
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1306
    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v2

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1307
    invoke-virtual {v4}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v4

    const/4 v5, 0x0

    .line 1303
    invoke-static {p2, v5, v0, v2, v4}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p2

    .line 1302
    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1309
    :cond_5
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1311
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1312
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result p1

    if-eq p1, v3, :cond_6

    .line 1318
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance p2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1350
    :goto_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public updateVideoCallDataUsageInfo(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 2

    .line 1088
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f010005

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Config;->isConfigEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1091
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dataUsage"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1093
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result p1

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateVideoCallDataUsageInfo: isCallSessionUpdated - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateVoWiFiCallQuality(I)V
    .locals 2

    .line 4141
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    if-eq p1, v0, :cond_0

    .line 4142
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    const/4 v0, 0x1

    .line 4143
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    return-void

    .line 4145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateVoWiFiCallQuality Unchanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
