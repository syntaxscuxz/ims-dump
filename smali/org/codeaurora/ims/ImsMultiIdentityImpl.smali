.class public Lorg/codeaurora/ims/ImsMultiIdentityImpl;
.super Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;
.source "ImsMultiIdentityImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;
    }
.end annotation


# instance fields
.field private final EVENT_MULTI_IDENTITY_INFO_PENDING_INDICATION:I

.field private final EVENT_MULTI_IDENTITY_INFO_PENDING_RESPONSE:I

.field private final EVENT_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE:I

.field private final EVENT_MULTI_IDENTITY_UPDATE_REGISTRATION_STATE_RESPONSE:I

.field private final EVENT_MULTI_IDENTITY_VIRTUAL_LINE_INFO_RESPONSE:I

.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLinesInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

.field private mPhoneId:I

.field private mRegisteredSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final recipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static bridge synthetic -$$Nest$monClientDeath(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onClientDeath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMultiIdentityInfoPendingIndication(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityInfoPendingIndication()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMultiIdentityInfoPendingResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityInfoPendingResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMultiIdentityRegistrationStatusChange(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityRegistrationStatusChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMultiIdentityVirtualLineInfoResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityVirtualLineInfoResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRegisterMultiIdentityLinesResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onRegisterMultiIdentityLinesResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method public constructor <init>(ILorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    .line 57
    invoke-virtual {p3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 39
    new-instance v0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl$1;-><init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    .line 46
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 47
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->READ_PHONE_STATE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_UPDATE_REGISTRATION_STATE_RESPONSE:I

    const/4 v0, 0x2

    .line 50
    iput v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE:I

    const/4 v1, 0x3

    .line 51
    iput v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_INFO_PENDING_INDICATION:I

    const/4 v2, 0x4

    .line 52
    iput v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_INFO_PENDING_RESPONSE:I

    const/4 v2, 0x5

    .line 53
    iput v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_VIRTUAL_LINE_INFO_RESPONSE:I

    .line 58
    iput p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    .line 59
    iput-object p2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 60
    iput-object p3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mContext:Landroid/content/Context;

    .line 61
    new-instance p1, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;

    invoke-direct {p1, p0, p4}, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;-><init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    .line 64
    iget-object p2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiIdentityInfoPendingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 69
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    .line 70
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    return-void
.end method

.method private getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    if-eqz v0, :cond_0

    return-object v0

    .line 128
    :cond_0
    const-string v0, "getMultiIdentityListener :: IImsMultiIdentityListener is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onClientDeath()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    return-void
.end method

.method private onMultiIdentityInfoPendingIndication()V
    .locals 3

    .line 172
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    .line 174
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 173
    invoke-virtual {v1, v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V

    return-void
.end method

.method private onMultiIdentityInfoPendingResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1

    .line 163
    const-string v0, "multiIdentityInfoPendingResponse"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 165
    :cond_1
    :goto_0
    const-string p1, "multiIdentity Info Pending action was unsuccessfull"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private onMultiIdentityRegistrationStatusChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 218
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMultiIdentityRegistrationStatusChange :: AsyncResult exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_1
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 229
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 230
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 231
    invoke-virtual {v2}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-virtual {v2}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 234
    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onRegistrationStatusChange(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMultiIdentityRegistrationStatusChange exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_4
    :goto_1
    const-string p1, "onMultiIdentityRegistrationStatusChange :: AsyncResult is null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private onMultiIdentityVirtualLineInfoResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    .line 147
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/VirtualLineInfo;

    if-nez p1, :cond_0

    .line 149
    const-string p1, "multiIdentityVirtualLineInfoResponse :: virtualInfo is null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/VirtualLineInfo;->mMsisdn:Ljava/lang/String;

    .line 153
    iget-object p1, p1, Lorg/codeaurora/ims/VirtualLineInfo;->mVirtualInfo:Ljava/util/ArrayList;

    .line 155
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v1, v2, v0, p1}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onQueryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multiIdentityVirtualLineInfoResponse exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private onRegisterMultiIdentityLinesResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    if-nez p1, :cond_0

    .line 203
    const-string p1, "registerMultiIdentityLinesResponse :: NULL response received. Returning"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 211
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onUpdateRegistrationInfoResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerMultiIdentityLinesResponse exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 247
    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public queryVirtualLineInfo(Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVirtualLineInfo(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setMultiIdentityListener(Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 112
    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    if-eqz p1, :cond_1

    .line 117
    invoke-interface {p1}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "Trying to set a NULL listener."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    :goto_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    return-void
.end method

.method public updateRegistrationStatus(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 185
    invoke-virtual {v0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result v3

    .line 191
    iget-object v4, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    if-ne v3, v1, :cond_0

    .line 188
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Lorg/codeaurora/ims/MultiIdentityLineInfo;)V

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    .line 198
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 197
    invoke-virtual {v0, p1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V

    return-void
.end method
