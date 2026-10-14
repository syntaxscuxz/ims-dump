.class public Lorg/codeaurora/ims/CapabilityTracker;
.super Ljava/lang/Object;
.source "CapabilityTracker.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCallComposerSupported:Z

.field private mIsDataChannelSupported:Z

.field private mIsUssdSupported:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    .line 27
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    .line 29
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsDataChannelSupported:Z

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public addCapability(II)V
    .locals 1

    .line 38
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 39
    iget-object p1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 40
    iget-object p0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    .line 57
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    .line 58
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsDataChannelSupported:Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lorg/codeaurora/ims/CapabilityTracker;->clone()Lorg/codeaurora/ims/CapabilityTracker;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lorg/codeaurora/ims/CapabilityTracker;
    .locals 3

    const/4 v0, 0x0

    .line 162
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/CapabilityTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-object v0, v1

    .line 165
    :catch_1
    const-string v1, "CapabilityTracker clone failed! return null."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEnabledCapabilities()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public isCallComposerSupported()Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    return p0
.end method

.method public isDataChannelSupported()Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsDataChannelSupported:Z

    return p0
.end method

.method public isSupported(I)Z
    .locals 1

    .line 97
    iget-object p0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 98
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedOnRadioTech(II)Z
    .locals 2

    .line 111
    iget-object p0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 112
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isUssdSupported()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    return p0
.end method

.method public isVideoSupported()Z
    .locals 1

    const/4 v0, 0x2

    .line 64
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/CapabilityTracker;->isSupported(I)Z

    move-result p0

    return p0
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result p0

    return p0
.end method

.method public isVoiceSupported()Z
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/CapabilityTracker;->isSupported(I)Z

    move-result p0

    return p0
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 1

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0, v0}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result p0

    return p0
.end method

.method public removeCapability(II)V
    .locals 1

    .line 47
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 48
    iget-object p1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setIsCallComposerSupported(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    return-void
.end method

.method public setIsDataChannelSupported(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsDataChannelSupported:Z

    return-void
.end method

.method public setIsUssdSupported(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    return-void
.end method
