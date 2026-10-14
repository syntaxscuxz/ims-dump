.class public Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
.super Ljava/lang/Object;
.source "SuppServiceNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/SuppServiceNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:I

.field public connId:I

.field public hasHoldTone:Z

.field public historyInfo:Ljava/lang/String;

.field public holdTone:Z

.field public index:I

.field public notificationType:I

.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/SuppServiceNotification$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->notificationType:I

    .line 13
    iput v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->code:I

    .line 14
    iput v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->index:I

    .line 15
    iput v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->type:I

    .line 17
    iput v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->connId:I

    .line 19
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->hasHoldTone:Z

    .line 20
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->holdTone:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const v3, 0x7fffffff

    if-lt v1, v2, :cond_13

    .line 59
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

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 79
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 60
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->notificationType:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 62
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->code:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    goto :goto_0

    .line 79
    :cond_4
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 64
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->index:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_6

    goto :goto_0

    .line 79
    :cond_6
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 66
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->type:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_8

    goto :goto_0

    .line 79
    :cond_8
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 68
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->number:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_a

    goto :goto_0

    .line 79
    :cond_a
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 70
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->connId:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_c

    goto/16 :goto_0

    .line 79
    :cond_c
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 72
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_e

    goto/16 :goto_0

    .line 79
    :cond_e
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 74
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->hasHoldTone:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_10

    goto/16 :goto_0

    .line 79
    :cond_10
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 76
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->holdTone:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_12

    goto/16 :goto_0

    .line 79
    :cond_12
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 58
    :cond_13
    :try_start_a
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_1
    sub-int/2addr v3, v1

    if-le v0, v3, :cond_14

    .line 79
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_14
    add-int/2addr v0, v1

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->notificationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->connId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->hasHoldTone:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 47
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->holdTone:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
