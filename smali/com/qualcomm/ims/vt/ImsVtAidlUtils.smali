.class public Lcom/qualcomm/ims/vt/ImsVtAidlUtils;
.super Ljava/lang/Object;
.source "ImsVtAidlUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCameraFacing(I)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static fromDualVtDirection(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static fromDualVtStatusCode(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static fromOrientation(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static fromStream(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static toCodecType(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 138
    const-string p0, "video/avc"

    return-object p0

    .line 136
    :cond_0
    const-string p0, "video/hevc"

    return-object p0

    .line 132
    :cond_1
    const-string p0, "video/3gpp"

    return-object p0

    .line 130
    :cond_2
    const-string p0, "video/mp4v-es"

    return-object p0
.end method

.method public static toDataUsage([Lvendor/qti/ImsVtService/ImsVtDataUsage;)[J
    .locals 11

    if-eqz p0, :cond_5

    .line 143
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x6

    .line 148
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    const/4 v5, 0x2

    aput-wide v2, v0, v5

    const/4 v6, 0x3

    aput-wide v2, v0, v6

    const/4 v7, 0x4

    aput-wide v2, v0, v7

    const/4 v8, 0x5

    aput-wide v2, v0, v8

    move v2, v1

    .line 149
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 150
    aget-object v3, p0, v2

    iget v3, v3, Lvendor/qti/ImsVtService/ImsVtDataUsage;->rat:I

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    aget-object v3, p0, v2

    iget-wide v9, v3, Lvendor/qti/ImsVtService/ImsVtDataUsage;->ulDataUsage:J

    aput-wide v9, v0, v7

    .line 161
    aget-object v3, p0, v2

    iget-wide v9, v3, Lvendor/qti/ImsVtService/ImsVtDataUsage;->dlDataUsage:J

    aput-wide v9, v0, v8

    goto :goto_1

    .line 156
    :cond_2
    aget-object v3, p0, v2

    iget-wide v9, v3, Lvendor/qti/ImsVtService/ImsVtDataUsage;->ulDataUsage:J

    aput-wide v9, v0, v5

    .line 157
    aget-object v3, p0, v2

    iget-wide v9, v3, Lvendor/qti/ImsVtService/ImsVtDataUsage;->dlDataUsage:J

    aput-wide v9, v0, v6

    goto :goto_1

    .line 152
    :cond_3
    aget-object v3, p0, v2

    iget-wide v9, v3, Lvendor/qti/ImsVtService/ImsVtDataUsage;->ulDataUsage:J

    aput-wide v9, v0, v1

    .line 153
    aget-object v3, p0, v2

    iget-wide v9, v3, Lvendor/qti/ImsVtService/ImsVtDataUsage;->dlDataUsage:J

    aput-wide v9, v0, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toDisplayMode(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method public static toDualVtCapability(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static toDualVtDirection(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toDualVtStatus(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toMediaEvent(I)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static toRequestId(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toStatus(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/16 p0, 0xb

    return p0

    :pswitch_2
    const/16 p0, 0xa

    return p0

    :pswitch_3
    const/16 p0, 0x9

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    :pswitch_5
    const/4 p0, 0x7

    return p0

    :pswitch_6
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x0

    return p0

    :pswitch_8
    const/4 p0, 0x2

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_a
    const/4 p0, 0x5

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toStream(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static toVideoQuality(I)I
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method
