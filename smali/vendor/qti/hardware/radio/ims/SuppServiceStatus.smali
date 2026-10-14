.class public Lvendor/qti/hardware/radio/ims/SuppServiceStatus;
.super Ljava/lang/Object;
.source "SuppServiceStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/SuppServiceStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cbNumListInfo:[Lvendor/qti/hardware/radio/ims/CbNumListInfo;

.field public errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

.field public facilityType:I

.field public failureCause:Ljava/lang/String;

.field public hasErrorDetails:Z

.field public isPasswordRequired:Z

.field public provisionStatus:I

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/SuppServiceStatus$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->status:I

    .line 13
    iput v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->provisionStatus:I

    .line 14
    iput v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    .line 17
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->hasErrorDetails:Z

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->isPasswordRequired:Z

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 89
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 91
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 92
    invoke-direct {p0, v3}, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 96
    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    .line 97
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

    .line 83
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->cbNumListInfo:[Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 84
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->describeContents(Ljava/lang/Object;)I

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

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const v3, 0x7fffffff

    if-lt v1, v2, :cond_11

    .line 57
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

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 58
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->status:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 60
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->provisionStatus:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    goto :goto_0

    .line 75
    :cond_4
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 62
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_6

    goto :goto_0

    .line 75
    :cond_6
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 64
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_8

    goto :goto_0

    .line 75
    :cond_8
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 66
    :cond_9
    :try_start_5
    sget-object v2, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->cbNumListInfo:[Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_a

    goto :goto_0

    .line 75
    :cond_a
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 68
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->hasErrorDetails:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_c

    goto/16 :goto_0

    .line 75
    :cond_c
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 70
    :cond_d
    :try_start_7
    sget-object v2, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_e

    goto/16 :goto_0

    .line 75
    :cond_e
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    .line 72
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->isPasswordRequired:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_10

    goto/16 :goto_0

    .line 75
    :cond_10
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 56
    :cond_11
    :try_start_9
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_1
    sub-int/2addr v3, v1

    if-le v0, v3, :cond_12

    .line 75
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_12
    add-int/2addr v0, v1

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->status:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->provisionStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->cbNumListInfo:[Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 43
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->hasErrorDetails:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 45
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->isPasswordRequired:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
