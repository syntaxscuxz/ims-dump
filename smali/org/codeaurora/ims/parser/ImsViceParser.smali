.class public Lorg/codeaurora/ims/parser/ImsViceParser;
.super Lorg/codeaurora/ims/parser/ConfInfo;
.source "ImsViceParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;,
        Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;,
        Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_VIDEO_HELD:Ljava/lang/String; = "vtheld"

.field private static final CALL_TYPE_VIDEO_RX:Ljava/lang/String; = "vtrx"

.field private static final CALL_TYPE_VIDEO_TX:Ljava/lang/String; = "vttx"

.field private static final CALL_TYPE_VIDEO_TX_RX:Ljava/lang/String; = "vttxrx"

.field private static final CALL_TYPE_VOICE_ACTIVE:Ljava/lang/String; = "volteactive"

.field private static final CALL_TYPE_VOICE_HELD:Ljava/lang/String; = "volteheld"

.field private static final LOCAL_TARGET_PARAM_NAME:Ljava/lang/String; = "+sip.rendering"

.field private static final LOCAL_TARGET_PARAM_PVAL_NO:Ljava/lang/String; = "no"

.field private static LOGTAG:Ljava/lang/String; = "ImsViceParser"

.field private static final MEDIA_DIRECTION_INACTIVE:Ljava/lang/String; = "inactive"

.field private static final MEDIA_DIRECTION_RECVONLY:Ljava/lang/String; = "recvonly"

.field private static final MEDIA_DIRECTION_SENDONLY:Ljava/lang/String; = "sendonly"

.field private static final MEDIA_DIRECTION_SENDRECV:Ljava/lang/String; = "sendrecv"

.field private static final MEDIA_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field private static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final STATE_CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final STATE_EARLY:Ljava/lang/String; = "early"

.field private static final STATE_PROCEEDING:Ljava/lang/String; = "proceeding"

.field private static final STATE_TERMINATED:Ljava/lang/String; = "terminated"

.field private static final STATE_TRYING:Ljava/lang/String; = "trying"

.field private static mDialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogStr:Ljava/lang/String;

.field private mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->preparePartialList()V

    return-void
.end method

.method private checkElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 3

    .line 133
    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 134
    :cond_0
    const-string v0, "full"

    .line 137
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notification state is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " element state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getCallState(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)I
    .locals 3

    const/4 v0, 0x2

    if-eqz p0, :cond_4

    .line 158
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "confirmed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 160
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "terminated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 164
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "trying"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x3

    return p0

    .line 166
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "proceeding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x4

    return p0

    .line 168
    :cond_3
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v1, "early"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x5

    return p0

    .line 173
    :cond_4
    sget-object p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v1, "getCallState Dialog null!"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method private static getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    if-eqz v0, :cond_16

    .line 200
    iget-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v3, "confirmed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 201
    iget-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 202
    :goto_0
    const-string v8, ", portPresent = "

    const-string v9, ", videoState = "

    const-string v10, "audioState = "

    const-string v11, "vtrx"

    const-string v12, "vttx"

    const-string v13, "vttxrx"

    const-string v14, "volteactive"

    const-string v15, "vtheld"

    const/16 v16, 0x0

    const-string v1, "volteheld"

    if-ge v4, v2, :cond_9

    .line 203
    iget-object v3, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    move/from16 v17, v2

    if-eqz v3, :cond_7

    .line 204
    iget-object v2, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 206
    iget-object v2, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    move/from16 v18, v4

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "inactive"

    move/from16 v19, v2

    const-string v2, "recvonly"

    move-object/from16 v20, v5

    const-string v5, "sendonly"

    move-object/from16 v21, v1

    const-string v1, "sendrecv"

    if-eqz v19, :cond_2

    .line 207
    iget-object v11, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v5, v14

    goto/16 :goto_3

    .line 210
    :cond_0
    iget-object v1, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 214
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1
    move-object/from16 v5, v21

    goto :goto_3

    .line 218
    :cond_2
    iget-object v14, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    move-object/from16 v19, v15

    const-string v15, "video"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 219
    iget-object v14, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v6, v13

    goto :goto_1

    .line 222
    :cond_3
    iget-object v1, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v6, v12

    goto :goto_1

    .line 225
    :cond_4
    iget-object v1, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v6, v11

    goto :goto_1

    .line 228
    :cond_5
    iget-object v1, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v6, v19

    .line 232
    :cond_6
    :goto_1
    iget-object v1, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, v3, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    .line 234
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    move/from16 v18, v4

    move-object/from16 v20, v5

    .line 239
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "Media Parameter incorrect!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    move-object/from16 v5, v20

    .line 241
    :goto_3
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v18, 0x1

    move/from16 v2, v17

    goto/16 :goto_0

    :cond_9
    move-object/from16 v21, v1

    move-object/from16 v20, v5

    move-object/from16 v19, v15

    .line 245
    iget-object v1, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_c

    .line 247
    iget-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    if-eqz v2, :cond_a

    .line 248
    iget-object v4, v2, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, v2, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 250
    iget-object v4, v2, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    const-string v15, "+sip.rendering"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 251
    iget-object v2, v2, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    const-string v4, "no"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 252
    sget-object v2, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v4, "set audioState to VOICE_HELD for sip.rending=no"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v21

    goto :goto_5

    .line 257
    :cond_a
    sget-object v2, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v4, "Parameters incorrect!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_b
    :goto_5
    sget-object v2, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    if-eqz v5, :cond_15

    .line 264
    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v6, :cond_11

    if-eqz v6, :cond_d

    if-eqz v7, :cond_d

    goto :goto_6

    .line 267
    :cond_d
    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v13

    .line 269
    :cond_e
    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object v12

    .line 271
    :cond_f
    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v11

    :cond_10
    move-object/from16 v0, v19

    .line 273
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-object v0

    :cond_11
    :goto_6
    return-object v14

    :cond_12
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    .line 276
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v6, :cond_14

    if-eqz v6, :cond_13

    if-eqz v7, :cond_13

    goto :goto_7

    :cond_13
    if-eqz v6, :cond_17

    if-nez v7, :cond_17

    return-object v0

    :cond_14
    :goto_7
    return-object v1

    .line 284
    :cond_15
    sget-object v0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v1, "audioState null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_16
    const/16 v16, 0x0

    :cond_17
    :goto_8
    return-object v16
.end method

.method private static isCallHeld(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 319
    sget-object p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v1, "mapViceCallToImsCallProfileCallType callType null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const-string v1, "vtheld"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "volteheld"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 349
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 354
    :cond_1
    const-string v2, "vttxrx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const-string v2, "vttx"

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "vtrx"

    .line 356
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    .line 358
    :goto_1
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 359
    invoke-static {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "volteactive"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p2, :cond_5

    :cond_4
    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    .line 364
    :cond_5
    iget-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 365
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 366
    iget-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move p2, v0

    :goto_2
    if-ge p2, p1, :cond_7

    .line 368
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "dialog local param name = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 369
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", dialog local param value = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 371
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v1, v1, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 374
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v1, v1, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    const-string v2, "+sip.rendering"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 375
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v1, v1, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 376
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v1, v1, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    const-string v2, "no"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v3, v0

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    return v3

    :cond_8
    return v0
.end method

.method private isDialogIdsEmpty()Z
    .locals 0

    .line 427
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static mapViceCallTypeToImsCallProfileCallType(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x2

    if-nez p0, :cond_0

    .line 292
    sget-object p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v1, "mapViceCallToImsCallProfileCallType callType null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 296
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "volteheld"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "vttx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "vtrx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "vttxrx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v0

    goto :goto_0

    :sswitch_4
    const-string v1, "vtheld"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "volteactive"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 312
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mapViceCallToImsCallProfileCallType unknown callType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    return v2

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    return v3

    :pswitch_3
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x49d18576 -> :sswitch_5
        -0x3010b10d -> :sswitch_4
        -0x300af478 -> :sswitch_3
        0x376584 -> :sswitch_2
        0x3765c2 -> :sswitch_1
        0x7f00dbb9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private preparePartialList()V
    .locals 1

    .line 145
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->allowedPartial:Ljava/util/ArrayList;

    const-string v0, "state"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setSAXHandler(Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;)V
    .locals 0

    .line 105
    sput-object p0, Lorg/codeaurora/ims/parser/ImsViceParser;->sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    return-void
.end method


# virtual methods
.method public getCallPullInfo(ZZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation

    .line 395
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->isDialogIdsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    sget-object p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string p1, "getCallPullInfo mDialogIds null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 401
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 403
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 405
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 406
    iget-object v4, v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    .line 407
    iget-object v3, v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 408
    iget-object v3, v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->localIdentity:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 409
    invoke-static {v2, p1, p2}, Lorg/codeaurora/ims/parser/ImsViceParser;->isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Z

    move-result v7

    .line 411
    invoke-static {v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallState(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)I

    move-result v8

    .line 413
    invoke-static {v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-static {v3}, Lorg/codeaurora/ims/parser/ImsViceParser;->mapViceCallTypeToImsCallProfileCallType(Ljava/lang/String;)I

    move-result v9

    .line 414
    invoke-static {v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/parser/ImsViceParser;->isCallHeld(Ljava/lang/String;)Z

    move-result v10

    .line 416
    iget-object v2, v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->direction:Ljava/lang/String;

    const-string v3, "initiator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v11, v2, 0x1

    .line 417
    new-instance v3, Landroid/telephony/ims/ImsExternalCallState;

    invoke-direct/range {v3 .. v11}, Landroid/telephony/ims/ImsExternalCallState;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ZIIZZ)V

    .line 421
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDialogInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getDialogInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getViceDialogInfoAsString()Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    return-object p0
.end method

.method public updateViceXmlBytes([B)V
    .locals 4

    const-string v0, "VICE XML in string :- \n"

    .line 109
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    .line 112
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getInstance()Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    .line 116
    invoke-static {v1}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    .line 117
    const-string p1, "*************New Vice Notification*****************"

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/codeaurora/ims/parser/ImsViceParser;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    .line 119
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getDialogInfo()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
