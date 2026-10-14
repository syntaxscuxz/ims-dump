.class public Lorg/codeaurora/ims/StableAidlErrorCode;
.super Ljava/lang/Object;
.source "StableAidlErrorCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromImsConfigErrorCode(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    return v0
.end method

.method public static toErrorCode(I)I
    .locals 2

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response received with error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/codeaurora/ims/StableAidlErrorCode;

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/16 p0, 0x32

    return p0

    :pswitch_2
    const/16 p0, 0x31

    return p0

    :pswitch_3
    const/16 p0, 0x2f

    return p0

    :pswitch_4
    const/16 p0, 0x2e

    return p0

    :pswitch_5
    const/16 p0, 0x2d

    return p0

    :pswitch_6
    const/16 p0, 0x2c

    return p0

    :pswitch_7
    const/16 p0, 0x2b

    return p0

    :pswitch_8
    const/16 p0, 0x2a

    return p0

    :pswitch_9
    const/16 p0, 0x29

    return p0

    :pswitch_a
    const/16 p0, 0x28

    return p0

    :pswitch_b
    const/16 p0, 0x27

    return p0

    :pswitch_c
    const/16 p0, 0x26

    return p0

    :pswitch_d
    const/16 p0, 0x25

    return p0

    :pswitch_e
    const/16 p0, 0x24

    return p0

    :pswitch_f
    const/16 p0, 0x23

    return p0

    :pswitch_10
    const/16 p0, 0x22

    return p0

    :pswitch_11
    const/16 p0, 0x21

    return p0

    :pswitch_12
    const/16 p0, 0x20

    return p0

    :pswitch_13
    const/16 p0, 0x1f

    return p0

    :pswitch_14
    const/16 p0, 0x1e

    return p0

    :pswitch_15
    const/16 p0, 0x1d

    return p0

    :pswitch_16
    const/16 p0, 0x1c

    return p0

    :pswitch_17
    const/16 p0, 0x1b

    return p0

    :pswitch_18
    const/16 p0, 0x10

    return p0

    :pswitch_19
    const/4 p0, 0x7

    return p0

    :pswitch_1a
    const/4 p0, 0x6

    return p0

    :pswitch_1b
    const/4 p0, 0x3

    return p0

    :pswitch_1c
    const/4 p0, 0x1

    return p0

    :pswitch_1d
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static toImsConfigErrorCode(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static toImsReasonInfoCode(I)I
    .locals 4

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call fail cause= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/codeaurora/ims/StableAidlErrorCode;

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    const/16 v1, 0x152

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1f7

    const/16 v2, 0x1f9

    if-eq p0, v0, :cond_4

    const/16 v0, 0x270

    if-eq p0, v0, :cond_3

    const/16 v0, 0x277

    const/16 v3, 0x150

    if-eq p0, v0, :cond_2

    const/16 v0, 0x27b

    if-eq p0, v0, :cond_6

    if-eq p0, v2, :cond_1

    const/16 v0, 0x1fa

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/16 v0, 0x64c

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xbbd

    return p0

    :pswitch_1
    const/16 p0, 0xbbc

    return p0

    :pswitch_2
    const/16 p0, 0xbbb

    return p0

    :pswitch_3
    const/16 p0, 0xbba

    return p0

    :pswitch_4
    const/16 p0, 0xbb9

    return p0

    :pswitch_5
    const/16 p0, 0x17a

    return p0

    :pswitch_6
    const/16 p0, 0x179

    return p0

    :pswitch_7
    const/16 p0, 0x178

    return p0

    :pswitch_8
    const/16 p0, 0x176

    return p0

    :pswitch_9
    const/16 p0, 0x175

    return p0

    :pswitch_a
    const/16 p0, 0x174

    return p0

    :pswitch_b
    const/16 p0, 0x173

    return p0

    :pswitch_c
    const/16 p0, 0x172

    return p0

    :pswitch_d
    const/16 p0, 0x171

    return p0

    :pswitch_e
    const/16 p0, 0x170

    return p0

    :pswitch_f
    const/16 p0, 0x16f

    return p0

    :pswitch_10
    const/16 p0, 0x16e

    return p0

    :pswitch_11
    const/16 p0, 0x5ed

    return p0

    :pswitch_12
    const/16 p0, 0x200

    return p0

    :pswitch_13
    const/16 p0, 0x1ff

    return p0

    :pswitch_14
    const/16 p0, 0x3f9

    return p0

    :pswitch_15
    const/16 p0, 0x655

    return p0

    :pswitch_16
    return v0

    :pswitch_17
    const/16 p0, 0x643

    return p0

    :pswitch_18
    const/16 p0, 0x642

    return p0

    :pswitch_19
    const/16 p0, 0x641

    return p0

    :pswitch_1a
    const/16 p0, 0x654

    return p0

    :pswitch_1b
    const/16 p0, 0x653

    return p0

    :pswitch_1c
    const/16 p0, 0x652

    return p0

    :pswitch_1d
    const/16 p0, 0x651

    return p0

    :pswitch_1e
    const/16 p0, 0x650

    return p0

    :pswitch_1f
    const/16 p0, 0x64f

    return p0

    :pswitch_20
    const/16 p0, 0x64e

    return p0

    :pswitch_21
    const/16 p0, 0x64d

    return p0

    :pswitch_22
    return v0

    :pswitch_23
    const/16 p0, 0x64b

    return p0

    :pswitch_24
    const/16 p0, 0x649

    return p0

    :pswitch_25
    const/16 p0, 0x648

    return p0

    :pswitch_26
    const/16 p0, 0x647

    return p0

    :pswitch_27
    const/16 p0, 0x646

    return p0

    :pswitch_28
    const/16 p0, 0x645

    return p0

    :pswitch_29
    const/16 p0, 0x644

    return p0

    :pswitch_2a
    const/16 p0, 0x5ec

    return p0

    :pswitch_2b
    const p0, 0xf00f

    return p0

    :pswitch_2c
    const p0, 0xf00e

    return p0

    :pswitch_2d
    const p0, 0xf00d

    return p0

    :pswitch_2e
    const p0, 0xf00c

    return p0

    :pswitch_2f
    const p0, 0xf00b

    return p0

    :pswitch_30
    const p0, 0xf00a

    return p0

    :pswitch_31
    const p0, 0xf009

    return p0

    :pswitch_32
    const p0, 0xf008

    return p0

    :pswitch_33
    const p0, 0xf007

    return p0

    :pswitch_34
    const p0, 0xf006

    return p0

    :pswitch_35
    const p0, 0xf005

    return p0

    :pswitch_36
    const p0, 0xf004

    return p0

    :pswitch_37
    const p0, 0xf003

    return p0

    :pswitch_38
    const p0, 0xf002

    return p0

    :pswitch_39
    const p0, 0xf001

    return p0

    :pswitch_3a
    const/16 p0, 0x5e9

    return p0

    :pswitch_3b
    const/16 p0, 0x5e7

    return p0

    :pswitch_3c
    const/16 p0, 0x5e6

    return p0

    :pswitch_3d
    const/16 p0, 0x5e5

    return p0

    :pswitch_3e
    const/16 p0, 0x5e4

    return p0

    :pswitch_3f
    const/16 p0, 0x5e3

    return p0

    :pswitch_40
    const/16 p0, 0x5e2

    return p0

    :pswitch_41
    const/16 p0, 0x5e1

    return p0

    :pswitch_42
    const/16 p0, 0x5e0

    return p0

    :pswitch_43
    const/16 p0, 0x5df

    return p0

    :pswitch_44
    const/16 p0, 0x5de

    return p0

    :pswitch_45
    const/16 p0, 0x5dd

    return p0

    :pswitch_46
    const/16 p0, 0x79

    return p0

    :pswitch_47
    const/16 p0, 0x5dc

    return p0

    :pswitch_48
    const/16 p0, 0x5ea

    return p0

    :pswitch_49
    const/16 p0, 0xfb

    return p0

    :pswitch_4a
    const/16 p0, 0xfa

    return p0

    :pswitch_4b
    const/16 p0, 0xf9

    return p0

    :pswitch_4c
    const/16 p0, 0xf8

    return p0

    :pswitch_4d
    const/16 p0, 0xf7

    return p0

    :pswitch_4e
    const/16 p0, 0x194

    return p0

    :pswitch_4f
    const/16 p0, 0x193

    return p0

    :pswitch_50
    const/16 p0, 0x192

    return p0

    :pswitch_51
    const/16 p0, 0x191

    return p0

    :pswitch_52
    const/16 p0, 0x16a

    return p0

    :pswitch_53
    const/16 p0, 0x169

    return p0

    :pswitch_54
    const/16 p0, 0x162

    return p0

    :pswitch_55
    const/16 p0, 0x161

    return p0

    :pswitch_56
    const/16 p0, 0x160

    return p0

    :pswitch_57
    const/16 p0, 0x164

    return p0

    :pswitch_58
    const/16 p0, 0x163

    return p0

    :pswitch_59
    const/16 p0, 0x15f

    return p0

    :pswitch_5a
    const/16 p0, 0x155

    return p0

    :pswitch_5b
    const/16 p0, 0x154

    return p0

    :pswitch_5c
    const/16 p0, 0x153

    return p0

    :pswitch_5d
    return v1

    :pswitch_5e
    const/16 p0, 0x151

    return p0

    :pswitch_5f
    const/16 p0, 0x14f

    return p0

    :pswitch_60
    const/16 p0, 0x14e

    return p0

    :pswitch_61
    const/16 p0, 0x14d

    return p0

    :pswitch_62
    const/16 p0, 0x14c

    return p0

    :pswitch_63
    const/16 p0, 0x141

    return p0

    :pswitch_64
    const/16 p0, 0x5e8

    return p0

    :pswitch_65
    const/16 p0, 0x3f8

    return p0

    :pswitch_66
    const/16 p0, 0x3f7

    return p0

    :pswitch_67
    const/16 p0, 0x3f6

    return p0

    :pswitch_68
    const/16 p0, 0x95

    return p0

    :pswitch_69
    const/16 p0, 0x16c

    return p0

    :pswitch_6a
    const/16 p0, 0x16b

    return p0

    :pswitch_6b
    const/16 p0, 0xf6

    return p0

    :pswitch_6c
    const/16 p0, 0xf5

    return p0

    :pswitch_6d
    const/16 p0, 0xf4

    return p0

    :pswitch_6e
    const/16 p0, 0xf3

    return p0

    :pswitch_6f
    const/16 p0, 0xf1

    return p0

    :cond_0
    return v3

    :cond_1
    const/16 p0, 0x92

    return p0

    :cond_2
    return v3

    :cond_3
    :pswitch_70
    const/16 p0, 0x14b

    return p0

    :cond_4
    return v2

    :cond_5
    return v1

    :cond_6
    const/16 p0, 0x1f5

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1fe
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_70
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x209
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x21f
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x225
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x25a
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toMsimAdditionalCallInfoCode(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0xbba

    return p0
.end method

.method public static toQtiCallFailReasonCode(I)I
    .locals 2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toQtiCallFailReasonCode input fail cause = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/codeaurora/ims/StableAidlErrorCode;

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x210

    if-eq p0, v0, :cond_3

    const/16 v0, 0x213

    if-eq p0, v0, :cond_2

    const/16 v0, 0x214

    if-eq p0, v0, :cond_1

    const/16 v0, 0x26f

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0xbce

    return p0

    :pswitch_1
    const/16 p0, 0xbcd

    return p0

    :pswitch_2
    const/16 p0, 0xbcc

    return p0

    :pswitch_3
    const/16 p0, 0xbcb

    return p0

    :pswitch_4
    const/16 p0, 0xbc6

    return p0

    :pswitch_5
    const/16 p0, 0xbc5

    return p0

    :pswitch_6
    const/16 p0, 0xbc4

    return p0

    :pswitch_7
    const/16 p0, 0xbc3

    return p0

    :pswitch_8
    const/16 p0, 0xbc2

    return p0

    :pswitch_9
    const/16 p0, 0xbc1

    return p0

    :pswitch_a
    const/16 p0, 0xbc0

    return p0

    :pswitch_b
    const/16 p0, 0xbbf

    return p0

    :cond_0
    const/16 p0, 0xbbe

    return p0

    :cond_1
    const/16 p0, 0xbca

    return p0

    :cond_2
    const/16 p0, 0xbc9

    return p0

    :cond_3
    const/16 p0, 0xbc8

    return p0

    :cond_4
    const/16 p0, 0xbc7

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x271
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toSmsManagerError(I)I
    .locals 2

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 74
    const-class p0, Lorg/codeaurora/ims/StableAidlErrorCode;

    const-string v1, "Failure reason is unknown"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :pswitch_0
    const/16 p0, 0x18

    return p0

    :pswitch_1
    const/16 p0, 0x17

    return p0

    :pswitch_2
    const/16 p0, 0x16

    return p0

    :pswitch_3
    const/16 p0, 0x15

    return p0

    :pswitch_4
    const/16 p0, 0x14

    return p0

    :pswitch_5
    const/16 p0, 0x13

    return p0

    :pswitch_6
    const/16 p0, 0x12

    return p0

    :pswitch_7
    const/16 p0, 0x11

    return p0

    :pswitch_8
    const/16 p0, 0x10

    return p0

    :pswitch_9
    const/16 p0, 0xf

    return p0

    :pswitch_a
    const/16 p0, 0xe

    return p0

    :pswitch_b
    const/16 p0, 0xd

    return p0

    :pswitch_c
    const/16 p0, 0xc

    return p0

    :pswitch_d
    const/16 p0, 0xb

    return p0

    :pswitch_e
    const/16 p0, 0xa

    return p0

    :pswitch_f
    const/16 p0, 0x9

    return p0

    :pswitch_10
    const/4 p0, 0x6

    return p0

    :pswitch_11
    const/16 p0, 0x8

    return p0

    :pswitch_12
    const/4 p0, 0x7

    return p0

    :pswitch_13
    const/4 p0, 0x5

    return p0

    :pswitch_14
    const/4 p0, 0x4

    return p0

    :pswitch_15
    const/4 p0, 0x3

    return p0

    :pswitch_16
    const/4 p0, 0x2

    return p0

    :pswitch_17
    return v0

    :pswitch_18
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
