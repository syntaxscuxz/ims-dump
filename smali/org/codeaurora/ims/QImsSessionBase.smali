.class public abstract Lorg/codeaurora/ims/QImsSessionBase;
.super Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.source "QImsSessionBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/QImsSessionBase$Listener;,
        Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;
    }
.end annotation


# instance fields
.field public mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field protected mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field protected mContext:Landroid/content/Context;

.field protected mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/QImsSessionBase$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhoneId:I

.field protected mState:I

.field protected mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 6

    .line 87
    new-instance v5, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/QImsSessionBase;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mPhoneId:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mState:I

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lorg/codeaurora/ims/QImsSessionBase;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 94
    iput-object p1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mContext:Landroid/content/Context;

    .line 95
    iput-object p4, p0, Lorg/codeaurora/ims/QImsSessionBase;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 96
    iput p3, p0, Lorg/codeaurora/ims/QImsSessionBase;->mPhoneId:I

    .line 97
    iput-object p5, p0, Lorg/codeaurora/ims/QImsSessionBase;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 134
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object p0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate listener, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_2
    const-string p0, "listener is null."

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public getState()I
    .locals 1

    .line 226
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 227
    :cond_0
    iget p0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mState:I

    return p0
.end method

.method public isSessionValid()Z
    .locals 2

    .line 212
    iget v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 214
    const-string v1, "Session is closed"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public notifyCallModifyInitiate(Lorg/codeaurora/ims/CallModify;)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 183
    invoke-interface {v1, p0, p1}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected notifyCallTypeChanging(I)V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 190
    invoke-interface {v1, p0, p1}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public notifySessionActive()V
    .locals 3

    .line 195
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 197
    invoke-interface {v2, p0}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onActive(Lorg/codeaurora/ims/QImsSessionBase;)V

    goto :goto_0

    .line 199
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected notifySessionClosed()V
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 169
    invoke-interface {v1, p0}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifySessionDisconnected()V
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 163
    invoke-interface {v1, p0}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifySessionHold()V
    .locals 3

    .line 203
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 205
    invoke-interface {v2, p0}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onHold(Lorg/codeaurora/ims/QImsSessionBase;)V

    goto :goto_0

    .line 207
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 176
    invoke-interface {v1, p0, p1}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 154
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object p0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Listener not found, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_2
    const-string p0, "listener is null."

    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object p0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 0

    return-void
.end method
