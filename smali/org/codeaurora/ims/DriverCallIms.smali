.class public Lorg/codeaurora/ims/DriverCallIms;
.super Ljava/lang/Object;
.source "DriverCallIms.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/DriverCallIms$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/codeaurora/ims/DriverCallIms;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONF_SUPPORT_INDICATED:I = 0x1

.field public static final CONF_SUPPORT_NONE:I = 0x0

.field public static final CONF_VIDEO_SUPPORTED:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "DRIVERCALL-IMS"

.field public static final UPDATE_AUDIO_QUALITY:I = 0x2000

.field public static final UPDATE_CALL_DETAILS:I = 0x20

.field public static final UPDATE_CALL_PROGRESS_INFO:I = 0x800

.field public static final UPDATE_CALL_PROGRESS_INFO_LIST:I = 0x10000

.field public static final UPDATE_CONF_SUPPORT:I = 0x200

.field public static final UPDATE_CRS_INFO:I = 0x400

.field public static final UPDATE_DIVERSION_INFO:I = 0x1000

.field public static final UPDATE_ENCRYPTION:I = 0x80

.field public static final UPDATE_HISTORY_INFO:I = 0x100

.field public static final UPDATE_INDEX:I = 0x2

.field public static final UPDATE_IS_CALLED_PARTY_RINGING:I = 0x8000

.field public static final UPDATE_IS_MPTY:I = 0x10

.field public static final UPDATE_IS_MT:I = 0x8

.field public static final UPDATE_MODEM_CALL_ID:I = 0x4000

.field public static final UPDATE_NONE:I = 0x0

.field public static final UPDATE_NUMBER:I = 0x4

.field public static final UPDATE_STATE:I = 0x1


# instance fields
.field public TOA:I

.field public additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

.field public als:I

.field public audioQuality:Lorg/codeaurora/ims/AudioQuality;

.field public callDetails:Lorg/codeaurora/ims/CallDetails;

.field public callFailCause:Landroid/telephony/ims/ImsReasonInfo;

.field public callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

.field public callProgressInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/CallProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public callReason:Ljava/lang/String;

.field public crsData:Lorg/codeaurora/ims/CrsData;

.field public diversionInfo:Ljava/lang/String;

.field public historyInfo:Ljava/lang/String;

.field public index:I

.field public isCalledPartyRinging:Z

.field public isDcCall:Z

.field public isEmergency:Z

.field public isEncrypted:Z

.field public isMT:Z

.field public isMpty:Z

.field public isPreparatory:Z

.field public isTirOverwriteAllowed:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public mAdditionalCallFailCause:I

.field private mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

.field public mCallFailReason:I

.field public mConfSupported:I

.field private mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

.field public mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

.field private final mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

.field public modemCallId:I

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public state:Lorg/codeaurora/ims/DriverCallIms$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 128
    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 197
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 198
    new-instance v0, Lorg/codeaurora/ims/VerstatInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/VerstatInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    .line 199
    new-instance v0, Lorg/codeaurora/ims/CrsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/CrsData;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 200
    new-instance v0, Lorg/codeaurora/ims/CallProgressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallProgressInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 201
    new-instance v0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 202
    new-instance v0, Lorg/codeaurora/ims/AudioQuality;

    invoke-direct {v0}, Lorg/codeaurora/ims/AudioQuality;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;)V
    .locals 0

    .line 217
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/VerstatInfo;)V

    .line 218
    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;Lorg/codeaurora/ims/EcnamInfo;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;)V

    .line 224
    iput-object p3, p0, Lorg/codeaurora/ims/DriverCallIms;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 4

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 128
    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 154
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 155
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 156
    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 157
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 158
    new-instance v0, Lorg/codeaurora/ims/CrsData;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/CrsData;-><init>(Lorg/codeaurora/ims/CrsData;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 159
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 160
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 161
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 162
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 163
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 164
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 165
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->als:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 166
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 167
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 168
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 169
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 170
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 171
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 172
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 173
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 174
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    .line 175
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 176
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    .line 177
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    .line 178
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 179
    new-instance v0, Lorg/codeaurora/ims/CallProgressInfo;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/CallProgressInfo;-><init>(Lorg/codeaurora/ims/CallProgressInfo;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 180
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 181
    new-instance v0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>(Lorg/codeaurora/ims/MsimAdditionalCallInfo;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 182
    new-instance v0, Lorg/codeaurora/ims/AudioQuality;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/AudioQuality;-><init>(Lorg/codeaurora/ims/AudioQuality;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 183
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    .line 184
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    .line 185
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isDcCall:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isDcCall:Z

    .line 186
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isCalledPartyRinging:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isCalledPartyRinging:Z

    .line 187
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isEmergency:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isEmergency:Z

    .line 188
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    .line 189
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mAdditionalCallFailCause:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mAdditionalCallFailCause:I

    .line 190
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    .line 191
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 193
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/VerstatInfo;)V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 128
    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 207
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 208
    new-instance v0, Lorg/codeaurora/ims/CrsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/CrsData;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 209
    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    .line 210
    new-instance p1, Lorg/codeaurora/ims/CallProgressInfo;

    invoke-direct {p1}, Lorg/codeaurora/ims/CallProgressInfo;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 211
    new-instance p1, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-direct {p1}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 212
    new-instance p1, Lorg/codeaurora/ims/AudioQuality;

    invoke-direct {p1}, Lorg/codeaurora/ims/AudioQuality;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 213
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public static presentationFromCLIP(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal presentation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    check-cast p1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/DriverCallIms;->compareTo(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 0

    .line 392
    iget p0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iget p1, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;
    .locals 0

    .line 336
    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    return-object p0
.end method

.method public getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;
    .locals 0

    .line 340
    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    return-object p0
.end method

.method public getIsCalledPartyRinging()Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lorg/codeaurora/ims/DriverCallIms;->isCalledPartyRinging:Z

    return p0
.end method

.method public getIsDcCall()Z
    .locals 0

    .line 348
    iget-boolean p0, p0, Lorg/codeaurora/ims/DriverCallIms;->isDcCall:Z

    return p0
.end method

.method public getModemCallId()I
    .locals 0

    .line 344
    iget p0, p0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    return p0
.end method

.method public getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;
    .locals 0

    .line 332
    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    return-object p0
.end method

.method public isConfSupportIndicated()Z
    .locals 1

    .line 356
    iget p0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVideoConfSupported()Z
    .locals 1

    .line 360
    iget p0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setmCallComposerInfo(Lorg/codeaurora/ims/CallComposerInfo;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    return-void
.end method

.method public setmEcnamInfo(Lorg/codeaurora/ims/EcnamInfo;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",toa="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v2, :cond_0

    const-string v2, "conf"

    goto :goto_0

    :cond_0
    const-string v2, "norm"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v2, :cond_1

    const-string v2, "mt"

    goto :goto_1

    :cond_1
    const-string v2, "mo"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    if-eqz v2, :cond_2

    const-string v2, "voc"

    goto :goto_2

    :cond_2
    const-string v2, "nonvoc"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v1, :cond_3

    const-string v1, "evp"

    goto :goto_3

    :cond_3
    const-string v1, "noevp"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",,cli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Call Details ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",CallFailCause Code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 409
    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",CallFailCause String= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 410
    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", historyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 412
    invoke-static {v1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Conf. Support="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTirOverwriteAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPreparatory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", CRS data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Call progress Info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", diversionInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", additional call info ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audio quality ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modemCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDcCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isDcCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCalledPartyRinging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isCalledPartyRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Call progress Info List = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callComposerInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", EcnamInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 239
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_1

    .line 240
    iput-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    const/4 v0, 0x1

    .line 243
    :cond_1
    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iget v2, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    if-eq v1, v2, :cond_2

    .line 244
    iput v2, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    or-int/lit8 v0, v0, 0x2

    .line 247
    :cond_2
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 248
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x4

    .line 251
    :cond_3
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eq v1, v2, :cond_4

    .line 252
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    or-int/lit8 v0, v0, 0x8

    .line 255
    :cond_4
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eq v1, v2, :cond_5

    .line 256
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    or-int/lit8 v0, v0, 0x10

    .line 259
    :cond_5
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v1, :cond_a

    .line 260
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-nez v1, :cond_6

    .line 261
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 262
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 263
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    .line 265
    :cond_6
    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    .line 266
    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    .line 267
    iget-object v3, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    .line 268
    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 269
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    .line 271
    :cond_7
    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 272
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    .line 274
    :cond_8
    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_9

    .line 275
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    .line 277
    :cond_9
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 281
    :cond_a
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/CallDetails;->update(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit8 v0, v0, 0x20

    .line 284
    :cond_b
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    if-eq v1, v2, :cond_c

    .line 285
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    or-int/lit16 v0, v0, 0x80

    .line 288
    :cond_c
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 289
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    or-int/lit16 v0, v0, 0x100

    .line 292
    :cond_d
    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    iget v2, p1, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    if-eq v1, v2, :cond_e

    .line 293
    iput v2, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    or-int/lit16 v0, v0, 0x200

    .line 296
    :cond_e
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/CrsData;->update(Lorg/codeaurora/ims/CrsData;)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit16 v0, v0, 0x400

    .line 299
    :cond_f
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    if-eq v1, v2, :cond_10

    .line 300
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    or-int/lit16 v0, v0, 0x400

    .line 303
    :cond_10
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 304
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    or-int/lit16 v0, v0, 0x800

    .line 307
    :cond_11
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 308
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    or-int/lit16 v0, v0, 0x1000

    .line 311
    :cond_12
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 312
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    or-int/lit16 v0, v0, 0x2000

    .line 315
    :cond_13
    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    iget v2, p1, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    if-eq v1, v2, :cond_14

    .line 316
    iput v2, p0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    or-int/lit16 v0, v0, 0x4000

    .line 319
    :cond_14
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isCalledPartyRinging:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isCalledPartyRinging:Z

    if-eq v1, v2, :cond_15

    .line 320
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isCalledPartyRinging:Z

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 323
    :cond_15
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 324
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 325
    iget-object p0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/high16 p0, 0x10000

    or-int/2addr p0, v0

    return p0

    :cond_16
    return v0
.end method
