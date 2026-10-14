.class Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;
.super Landroid/os/AsyncTask;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field height:I

.field final synthetic this$0:Lcom/qualcomm/ims/vt/MediaController;

.field width:I


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/MediaController;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 167
    iput p2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    .line 168
    iput p3, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    return-void
.end method

.method private reconfigureAndDecodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    if-eqz v0, :cond_0

    .line 175
    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$fgetmContext(Lcom/qualcomm/ims/vt/MediaController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    const/high16 v2, 0x7f020000

    invoke-static {p1, v2, v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->decodeImage(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$fgetmContext(Lcom/qualcomm/ims/vt/MediaController;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    iget v2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    invoke-static {p1, v0, v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->decodeImage(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    iget p0, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p1, v0, p0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setPreviewImageAsync reconfigureAndDecodeImage bitmap b = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " width = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$smlog(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 193
    aget-object p1, p1, v0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPreviewImageAsync: width = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string p0, "setPreviewImageAsync: PauseImageTask is cancelled"

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$smlog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->reconfigureAndDecodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 162
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPreviewImageAsync bitmap = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$smlog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$msetPauseImage(Lcom/qualcomm/ims/vt/MediaController;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 162
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
