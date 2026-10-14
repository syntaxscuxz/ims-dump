.class public Lorg/codeaurora/ims/ImsRegistrationUtils;
.super Ljava/lang/Object;
.source "ImsRegistrationUtils.java"


# static fields
.field public static final CAMPED:I = 0x4

.field public static final CODE_IS_NOT_PS_ATTACHED:I = 0xfa2

.field public static final CODE_IS_PS_ATTACHED:I = 0xfa1

.field public static final CS_ONLY:I = 0x1

.field public static final CS_PS:I = 0x3

.field public static final NO_SRV:I = 0x0

.field public static final PS_ONLY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSelfIdentityUrisDiff(Ljava/util/HashSet;[Landroid/net/Uri;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;[",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 68
    :cond_2
    array-length v2, p1

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    move v2, v0

    .line 72
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 73
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public static convertToPsAttachedCode(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0xfa2

    return p0

    :cond_0
    const/16 p0, 0xfa1

    return p0
.end method

.method public static extractUrisFromPipeSeparatedUriStrings(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 3

    if-eqz p0, :cond_2

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 51
    array-length v0, p0

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    .line 52
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 53
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toTelephonManagerRadioTech(I)I
    .locals 1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x12

    return p0

    :cond_0
    :pswitch_1
    const/16 p0, 0xd

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
