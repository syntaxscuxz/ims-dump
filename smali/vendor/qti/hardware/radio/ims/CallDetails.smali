.class public Lvendor/qti/hardware/radio/ims/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/CallDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callDomain:I

.field public callSubstate:I

.field public callType:I

.field public causeCode:I

.field public extras:[Ljava/lang/String;

.field public isCrbtCall:Z

.field public isVisualizedVoiceCall:Z

.field public isVosSupported:Z

.field public localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

.field public mediaId:I

.field public peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

.field public rttMode:I

.field public sipAlternateUri:Ljava/lang/String;

.field public threeDimensionalVideoType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallDetails$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallDetails$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/CallDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    .line 13
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    .line 18
    iput v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    .line 19
    iput v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    .line 20
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    .line 22
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isVosSupported:Z

    .line 23
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isCrbtCall:Z

    .line 24
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isVisualizedVoiceCall:Z

    .line 25
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->threeDimensionalVideoType:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 113
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 115
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 116
    invoke-direct {p0, v3}, Lvendor/qti/hardware/radio/ims/CallDetails;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 120
    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    .line 121
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 107
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/ims/CallDetails;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 108
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallDetails;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const v3, 0x7fffffff

    if-lt v1, v2, :cond_1d

    .line 69
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    :goto_0
    add-int/2addr v0, v1

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 70
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 72
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    goto :goto_0

    .line 99
    :cond_4
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 74
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_6

    goto :goto_0

    .line 99
    :cond_6
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 76
    :cond_7
    :try_start_4
    sget-object v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_8

    goto :goto_0

    .line 99
    :cond_8
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 78
    :cond_9
    :try_start_5
    sget-object v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_a

    goto :goto_0

    .line 99
    :cond_a
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 80
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_c

    goto/16 :goto_0

    .line 99
    :cond_c
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 82
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_e

    goto/16 :goto_0

    .line 99
    :cond_e
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 84
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_10

    goto/16 :goto_0

    .line 99
    :cond_10
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 86
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_12

    goto/16 :goto_0

    .line 99
    :cond_12
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 88
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_14

    goto/16 :goto_0

    .line 99
    :cond_14
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 90
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isVosSupported:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_16

    goto/16 :goto_0

    .line 99
    :cond_16
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 92
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isCrbtCall:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_18

    goto/16 :goto_0

    .line 99
    :cond_18
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 94
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isVisualizedVoiceCall:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_1a

    goto/16 :goto_0

    .line 99
    :cond_1a
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 96
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->threeDimensionalVideoType:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_1c

    goto/16 :goto_0

    .line 99
    :cond_1c
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 68
    :cond_1d
    :try_start_f
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_1
    sub-int/2addr v3, v1

    if-le v0, v3, :cond_1e

    .line 99
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_1e
    add-int/2addr v0, v1

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 48
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 49
    iget p2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget p2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget p2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget p2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object p2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-boolean p2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isVosSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 55
    iget-boolean p2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isCrbtCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 56
    iget-boolean p2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->isVisualizedVoiceCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    iget p0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->threeDimensionalVideoType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
