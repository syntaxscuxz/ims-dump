.class public Lcom/qualcomm/ims/vt/CvoUtil;
.super Ljava/lang/Object;
.source "CvoUtil.java"


# static fields
.field private static final DBG:Z = true

.field public static final ORIENTATION_ANGLE_0:I = 0x0

.field public static final ORIENTATION_ANGLE_180:I = 0x2

.field public static final ORIENTATION_ANGLE_270:I = 0x3

.field public static final ORIENTATION_ANGLE_90:I = 0x1

.field public static final ORIENTATION_THRESHOLD:I = 0x2d

.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "VideoCall_CvoUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isInRange(III)Z
    .locals 0

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isInRange2(III)Z
    .locals 1

    sub-int v0, p1, p2

    add-int/2addr p1, p2

    .line 60
    invoke-static {p0, v0, p1}, Lcom/qualcomm/ims/vt/CvoUtil;->isInRange(III)Z

    move-result p0

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 64
    const-string v0, "VideoCall_CvoUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 68
    const-string v0, "VideoCall_CvoUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static toOrientation(I)I
    .locals 2

    const/16 v0, 0x5a

    const/16 v1, 0x2d

    .line 35
    invoke-static {p0, v0, v1}, Lcom/qualcomm/ims/vt/CvoUtil;->isInRange2(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0xb4

    .line 37
    invoke-static {p0, v0, v1}, Lcom/qualcomm/ims/vt/CvoUtil;->isInRange2(III)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 v0, 0x10e

    .line 39
    invoke-static {p0, v0, v1}, Lcom/qualcomm/ims/vt/CvoUtil;->isInRange2(III)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
