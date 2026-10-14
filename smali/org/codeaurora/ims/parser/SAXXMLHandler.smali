.class public Lorg/codeaurora/ims/parser/SAXXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXXMLHandler.java"


# static fields
.field private static mLocalTag:Ljava/lang/String; = "conference-info"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private builder:Ljava/lang/StringBuilder;

.field private mConfDescSubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

.field private mConfUriEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfUriSubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfuri:Lorg/codeaurora/ims/parser/Element;

.field private mInConfDescription:Z

.field private mInUser:Z

.field private mIsDisconnectInfo:Z

.field private mIsEndPoint:Z

.field private mIsEnpointInfo:Z

.field private mIsJoiningInfo:Z

.field private mIsUserCallInfo:Z

.field private mIsassociated:Z

.field private mIscallinfo:Z

.field private mIsconuri:Z

.field private mIsentry:Z

.field private mIsmedia:Z

.field private mIsreferredInfo:Z

.field private mIsroles:Z

.field private mIsserviceuri:Z

.field private mMessageElement:Lorg/codeaurora/ims/parser/Element;

.field private mMessageSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mUsersElement:Lorg/codeaurora/ims/parser/Element;

.field private mUsersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private muserEndPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private muserSubElementlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private usersubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    .line 38
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    .line 39
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    .line 40
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 41
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    .line 42
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    .line 43
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    .line 44
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    .line 45
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    .line 46
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 47
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsserviceuri:Z

    .line 48
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsmedia:Z

    .line 49
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    .line 50
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    .line 51
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    .line 54
    const-string v0, "SAXXMLHandler"

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->LOGTAG:Ljava/lang/String;

    .line 57
    const-string v1, "New List obj created"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 195
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 196
    iget-object p0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endDocument()V
    .locals 3

    const-string v0, "Root Tag Name:"

    .line 460
    :try_start_0
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 461
    const-string v1, "SAXXMLHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 463
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 201
    invoke-super/range {p0 .. p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v2, :cond_2e

    .line 203
    const-string v2, "endelment:inside"

    const-string v3, "SAXXMLHandler"

    invoke-static {v3, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-boolean v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    const/4 v4, 0x0

    const-string v5, "display-text"

    if-eqz v2, :cond_2

    .line 205
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-virtual {v2, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    const-string v2, "maximum-user-count"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v7, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-virtual {v6, v2, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    :goto_0
    iput-boolean v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    goto :goto_1

    .line 214
    :cond_2
    const-string v2, "subject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 215
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v7, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-virtual {v6, v2, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 217
    :cond_3
    const-string v2, "free-text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 218
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v7, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 218
    invoke-virtual {v6, v2, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_4
    const-string v2, "keywords"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 221
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v7, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 221
    invoke-virtual {v6, v2, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_5
    :goto_1
    iget-boolean v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    const-string v6, "uri"

    const-string v7, "entry"

    if-eqz v2, :cond_a

    .line 225
    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 226
    invoke-virtual {v2, v7}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 227
    const-string v8, "conf_uris"

    invoke-virtual {v2, v8}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 229
    iget-object v8, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 229
    invoke-virtual {v2, v5, v8}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 231
    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 232
    iget-object v8, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 233
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 232
    invoke-virtual {v2, v6, v8}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 234
    :cond_7
    const-string v9, "purpose"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 235
    iget-object v8, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 235
    invoke-virtual {v2, v9, v8}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 237
    :cond_8
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 238
    iget-object v8, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 239
    :cond_9
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 240
    iget-object v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    iget-object v8, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-virtual {v2, v8}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 241
    iput-boolean v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    .line 244
    :cond_a
    :goto_2
    iget-boolean v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    const-string v8, "media"

    if-eqz v2, :cond_2a

    .line 245
    iget-object v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    .line 246
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/parser/Element;

    .line 247
    const-string v9, "user"

    invoke-virtual {v2, v9}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 248
    const-string v10, "users"

    invoke-virtual {v2, v10}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 249
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-virtual {v2, v11}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 251
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    iget-boolean v12, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    if-nez v12, :cond_b

    iget-boolean v12, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-nez v12, :cond_b

    .line 254
    iget-object v12, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 254
    invoke-virtual {v2, v5, v12}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_b
    const-string v12, "entity"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    iget-boolean v13, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-nez v13, :cond_c

    .line 260
    iget-object v13, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 261
    invoke-virtual {v2, v12}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 262
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v4, "User: entity attr = "

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", entity elem  = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-static {v13}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 265
    invoke-virtual {v2, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_c
    iget-boolean v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    const-string v13, "associated-aors"

    if-eqz v4, :cond_11

    .line 269
    new-instance v4, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v4}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 270
    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 272
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    iget-boolean v14, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v14, :cond_d

    .line 274
    invoke-virtual {v4, v13}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v4, v9}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 276
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 276
    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 282
    :cond_d
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    iget-boolean v14, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v14, :cond_e

    .line 284
    iget-object v7, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 284
    invoke-virtual {v4, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 289
    :cond_e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-boolean v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v6, :cond_f

    .line 291
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 292
    iput-boolean v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto :goto_3

    .line 293
    :cond_f
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-boolean v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    if-eqz v4, :cond_10

    .line 295
    new-instance v4, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v4}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 296
    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 297
    const-string v6, "roles"

    invoke-virtual {v4, v6}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v4, v13}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 299
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 299
    invoke-virtual {v4, v7, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 303
    :cond_10
    const-string v4, "languages"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 304
    iget-object v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 304
    const-string v6, "languages"

    invoke-virtual {v2, v6, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_11
    :goto_3
    iget-boolean v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    if-eqz v4, :cond_25

    .line 314
    iget-object v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    .line 315
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 314
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    .line 316
    const-string v6, "endpoint"

    invoke-virtual {v4, v6}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v4, v9}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 318
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 320
    iget-object v14, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 320
    invoke-virtual {v4, v5, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 322
    :cond_12
    const-string v14, "status"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 323
    invoke-virtual {v4, v14}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_13

    sget-object v15, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mLocalTag:Ljava/lang/String;

    .line 324
    invoke-virtual {v15, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_16

    .line 325
    :cond_13
    iget-object v15, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 325
    invoke-virtual {v4, v14, v15}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 328
    :cond_14
    const-string v14, "joining-method"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 329
    iget-object v14, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 329
    const-string v15, "joining-method"

    invoke-virtual {v4, v15, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 331
    :cond_15
    const-string v14, "disconnection-method"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 332
    iget-object v14, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 332
    const-string v15, "disconnection-method"

    invoke-virtual {v4, v15, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_16
    :goto_4
    iget-boolean v14, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    if-eqz v14, :cond_23

    .line 336
    iget-boolean v14, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    const-string v15, "by"

    move/from16 p2, v14

    const-string v14, "reason"

    move-object/from16 v16, v8

    const-string v8, "when"

    if-eqz p2, :cond_19

    move-object/from16 p2, v10

    .line 337
    new-instance v10, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v10}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    move-object/from16 v17, v2

    .line 338
    const-string v2, "refrred"

    invoke-virtual {v10, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v10, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v10}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 341
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 343
    iget-object v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-virtual {v10, v8, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 347
    :cond_17
    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 348
    iget-object v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual {v10, v14, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 351
    :cond_18
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 352
    iget-object v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {v10, v15, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_19
    move-object/from16 v17, v2

    move-object/from16 p2, v10

    .line 355
    iget-boolean v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    if-eqz v2, :cond_1c

    .line 356
    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 357
    const-string v10, "joining-info"

    invoke-virtual {v2, v10}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 360
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 362
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-virtual {v2, v8, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 365
    :cond_1a
    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 366
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 368
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 366
    invoke-virtual {v2, v14, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 369
    :cond_1b
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 370
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-virtual {v2, v15, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 373
    :cond_1c
    iget-boolean v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    if-eqz v2, :cond_1f

    .line 374
    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 375
    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 376
    const-string v10, "disconnection-info"

    invoke-virtual {v2, v10}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 380
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 382
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 380
    invoke-virtual {v2, v8, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 384
    :cond_1d
    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 385
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 387
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 385
    invoke-virtual {v2, v14, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 388
    :cond_1e
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 389
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 391
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 389
    invoke-virtual {v2, v15, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 393
    :cond_1f
    iget-boolean v2, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    if-eqz v2, :cond_24

    .line 394
    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 395
    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 396
    const-string v8, "call-info"

    invoke-virtual {v2, v8}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 401
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 401
    invoke-virtual {v2, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 404
    :cond_20
    const-string v6, "call-id"

    .line 405
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 406
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 406
    const-string v8, "call-id"

    invoke-virtual {v2, v8, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 409
    :cond_21
    const-string v6, "from-tag"

    .line 410
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 411
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 411
    const-string v8, "from-tag"

    invoke-virtual {v2, v8, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 414
    :cond_22
    const-string v6, "to-tag"

    .line 415
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 416
    iget-object v6, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 418
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 416
    const-string v8, "to-tag"

    invoke-virtual {v2, v8, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_23
    move-object/from16 v17, v2

    move-object/from16 v16, v8

    move-object/from16 p2, v10

    .line 422
    :cond_24
    :goto_5
    invoke-virtual {v4, v7}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 423
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_25
    move-object/from16 v17, v2

    move-object/from16 v16, v8

    move-object/from16 p2, v10

    .line 425
    :goto_6
    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v4, 0x0

    .line 426
    iput-boolean v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 428
    :cond_26
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 429
    const-string v2, "User need to added end"

    invoke-static {v3, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v17

    .line 432
    invoke-virtual {v2, v12}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 433
    const-string v4, "User entity attr is missing!"

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v2, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 436
    const-string v3, ""

    goto :goto_7

    .line 437
    :cond_27
    invoke-virtual {v2, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 434
    :goto_7
    invoke-virtual {v2, v12, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const/4 v4, 0x0

    .line 439
    iput-boolean v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    .line 440
    iput-boolean v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    .line 441
    iput-boolean v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 442
    iput-boolean v4, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    goto :goto_8

    :cond_29
    move-object/from16 v2, v17

    :goto_8
    move-object/from16 v3, p2

    .line 444
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 446
    iget-object v3, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2a
    move-object/from16 v16, v8

    .line 449
    :cond_2b
    :goto_9
    const-string v2, "conference-info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_a

    :cond_2c
    move-object/from16 v2, v16

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 452
    const-string v1, "NotApplicable"

    sput-object v1, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mLocalTag:Ljava/lang/String;

    .line 454
    :cond_2d
    :goto_a
    iget-object v0, v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2e
    return-void
.end method

.method public getConferenceDescElement()Lorg/codeaurora/ims/parser/Element;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    return-object p0
.end method

.method public getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    return-object p0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 72
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriEntryList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 82
    const-string p1, "conference-info"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "SAXXMLHandler"

    const-string v1, "state"

    const-string v2, "entity"

    if-eqz p2, :cond_0

    .line 83
    new-instance p2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {p2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    .line 84
    invoke-virtual {p2, p1}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 86
    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    .line 88
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {p2, v1, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    .line 90
    const-string v3, "version"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {p2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    .line 92
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {p2, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    .line 94
    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3, p2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 95
    const-string p2, "New ConfreInf obj created"

    invoke-static {v0, p2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    const-string p2, "conference-description"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_c

    const-string v3, "maximum-user-count"

    .line 98
    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    .line 108
    :cond_1
    const-string v3, "users"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    new-instance p2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {p2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    .line 110
    invoke-virtual {p2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p2, p1}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    .line 113
    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p2, p1}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 114
    iget-object p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 115
    :cond_2
    const-string p1, "user"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 116
    const-string p2, "User need to added start"

    invoke-static {v0, p2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance p2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {p2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 118
    invoke-virtual {p2, p1}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 122
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p2, v1, p1}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p2, v2, p1}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "User: entity attr = "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    goto/16 :goto_1

    .line 136
    :cond_3
    const-string v0, "display-text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-nez v1, :cond_4

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    goto/16 :goto_1

    .line 139
    :cond_4
    const-string v1, "associated-aors"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v1, :cond_5

    .line 141
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    goto/16 :goto_1

    .line 142
    :cond_5
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v0, :cond_6

    .line 144
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_1

    .line 145
    :cond_6
    const-string v0, "uri"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v0, :cond_7

    .line 146
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_1

    .line 147
    :cond_7
    const-string v0, "roles"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 148
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    .line 149
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_1

    .line 150
    :cond_8
    const-string v0, "endpoint"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v1, :cond_9

    .line 151
    new-instance p2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {p2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 152
    invoke-virtual {p2, v0}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2, p1}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 156
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p2, v2, p1}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    goto :goto_1

    .line 159
    :cond_9
    const-string p1, "conf_uris"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 160
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    .line 161
    new-instance p4, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {p4}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object p4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    .line 162
    invoke-virtual {p4, p1}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p1, p2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    .line 165
    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p2, p1}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 166
    iget-object p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_a
    const-string p1, "entry"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    if-eqz p1, :cond_b

    goto :goto_1

    .line 168
    :cond_b
    const-string p1, "media"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 169
    sput-object p1, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mLocalTag:Ljava/lang/String;

    goto :goto_1

    .line 100
    :cond_c
    :goto_0
    new-instance p4, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {p4}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object p4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    .line 101
    invoke-virtual {p4, p2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p2, p1}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    .line 105
    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {p2, p1}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 106
    iget-object p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    iget-object p2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    .line 171
    :cond_d
    :goto_1
    iget-boolean p1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    if-eqz p1, :cond_11

    .line 172
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 173
    const-string p1, "refrred"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 174
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    return-void

    .line 175
    :cond_e
    const-string p1, "joining-info"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 176
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    return-void

    .line 177
    :cond_f
    const-string p1, "disconnection-info"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 178
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    return-void

    .line 179
    :cond_10
    const-string p1, "call-info"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 182
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    :cond_11
    return-void
.end method
