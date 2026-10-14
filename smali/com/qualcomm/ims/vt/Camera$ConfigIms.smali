.class public Lcom/qualcomm/ims/vt/Camera$ConfigIms;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigIms"
.end annotation


# instance fields
.field fps:I

.field orientationMode:I

.field size:Landroid/util/Size;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->size:Landroid/util/Size;

    .line 52
    iput p3, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->fps:I

    .line 53
    iput p4, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->orientationMode:I

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;II)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->size:Landroid/util/Size;

    .line 67
    iput p2, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->fps:I

    .line 68
    iput p3, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->orientationMode:I

    return-void

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Size passed to ConfigIms is null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFps()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->fps:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->size:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    return p0
.end method

.method public getOrientationMode()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->orientationMode:I

    return p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->size:Landroid/util/Size;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->size:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera.ConfigIms(width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->orientationMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
