.class Lcom/google/android/talk/FeatureManager$SetFeaturesTask;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/FeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetFeaturesTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mDoneRunnable:Ljava/lang/Runnable;

.field private final mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountId"    # J
    .param p4, "doneRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 219
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;-><init>(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    .line 220
    iput-object p1, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    .line 221
    iput-object p4, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mDoneRunnable:Ljava/lang/Runnable;

    .line 222
    iput-wide p2, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mAccountId:J

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "doneRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 216
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;-><init>(Landroid/content/Context;JLjava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/FeatureManager$SetFeaturesTask;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mDoneRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected doInBackground()V
    .locals 17

    .prologue
    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    # invokes: Lcom/google/android/talk/FeatureManager;->determineDeviceCapabilities(Landroid/content/Context;)Lcom/google/android/talk/FeatureManager$DeviceCapabilities;
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$200(Landroid/content/Context;)Lcom/google/android/talk/FeatureManager$DeviceCapabilities;

    move-result-object v3

    .line 243
    .local v3, "deviceCaps":Lcom/google/android/talk/FeatureManager$DeviceCapabilities;
    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    if-eqz v13, :cond_9

    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mFrontCamera:Z

    if-eqz v13, :cond_9

    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mGlv2:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    :goto_0
    # setter for: Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$302(Z)Z

    .line 244
    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    # setter for: Lcom/google/android/talk/FeatureManager;->sAudioChatEnabled:Z
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$402(Z)Z

    .line 249
    # getter for: Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_enable_video"

    # getter for: Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v13

    # setter for: Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$302(Z)Z

    .line 252
    # getter for: Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v13

    if-nez v13, :cond_0

    .line 253
    const-string v13, "talk"

    const-string v14, "GServices override - disabling video chat"

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    # getter for: Lcom/google/android/talk/FeatureManager;->sAudioChatEnabled:Z
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_enable_audio"

    # getter for: Lcom/google/android/talk/FeatureManager;->sAudioChatEnabled:Z
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v13

    # setter for: Lcom/google/android/talk/FeatureManager;->sAudioChatEnabled:Z
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$402(Z)Z

    .line 260
    # getter for: Lcom/google/android/talk/FeatureManager;->sAudioChatEnabled:Z
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v13

    if-nez v13, :cond_1

    .line 261
    const-string v13, "talk"

    const-string v14, "GServices override - disabling voice chat"

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_1
    # getter for: Lcom/google/android/talk/FeatureManager;->QVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$500()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v6

    .line 272
    .local v6, "maxIncomingVideoSpec":Lcom/google/android/videochat/VideoSpecification;
    # getter for: Lcom/google/android/talk/FeatureManager;->QVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$500()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v7

    .line 273
    .local v7, "maxOutgoingSpecNoEffects":Lcom/google/android/videochat/VideoSpecification;
    # getter for: Lcom/google/android/talk/FeatureManager;->QVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$500()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v8

    .line 275
    .local v8, "maxOutgoingSpecWithEffects":Lcom/google/android/videochat/VideoSpecification;
    # getter for: Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_go_hvga"

    invoke-static {v13, v14}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "hvgaSetting":Ljava/lang/String;
    const/4 v10, 0x1

    .line 279
    .local v10, "readOverrides":Z
    const/4 v12, 0x0

    .line 280
    .local v12, "useHVGA":Z
    const-string v13, "true"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 281
    const/4 v12, 0x1

    .line 282
    const/4 v10, 0x0

    .line 289
    :cond_2
    :goto_1
    if-eqz v12, :cond_b

    .line 290
    const-string v13, "off"

    # setter for: Lcom/google/android/talk/FeatureManager;->sDefaultVideoChatEffect:Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    # getter for: Lcom/google/android/talk/FeatureManager;->HVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$700()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v6

    .line 292
    # getter for: Lcom/google/android/talk/FeatureManager;->HVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$700()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v7

    .line 293
    # getter for: Lcom/google/android/talk/FeatureManager;->QVGA_SIZE:Lcom/google/android/videochat/VideoSpecification;
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$500()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v8

    .line 329
    :cond_3
    :goto_2
    iget v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mEffectsEnabledMask:I

    # setter for: Lcom/google/android/talk/FeatureManager;->sEffectsEnabledMask:I
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$802(I)I

    .line 332
    const/4 v9, 0x0

    .line 335
    .local v9, "policyDisableMask":I
    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mMulticore:Z

    if-nez v13, :cond_4

    .line 336
    const v9, 0x7fffffff

    .line 340
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 341
    or-int/lit8 v9, v9, 0x2

    .line 345
    :cond_5
    if-eqz v9, :cond_6

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_effects_enabled_mask"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    xor-int/lit8 v13, v13, -0x1

    and-int/2addr v9, v13

    .line 349
    :cond_6
    xor-int/lit8 v13, v9, -0x1

    # &= operator for: Lcom/google/android/talk/FeatureManager;->sEffectsEnabledMask:I
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$872(I)I

    .line 355
    # getter for: Lcom/google/android/talk/FeatureManager;->sEffectsEnabledMask:I
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$800()I

    move-result v13

    if-eqz v13, :cond_7

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_effects_disabled_mask"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    xor-int/lit8 v13, v13, -0x1

    # &= operator for: Lcom/google/android/talk/FeatureManager;->sEffectsEnabledMask:I
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$872(I)I

    .line 363
    .end local v4    # "hvgaSetting":Ljava/lang/String;
    .end local v9    # "policyDisableMask":I
    .end local v10    # "readOverrides":Z
    .end local v12    # "useHVGA":Z
    :cond_7
    invoke-static {v6}, Lcom/google/android/videochat/VideoSpecification;->setMaxIncoming(Lcom/google/android/videochat/VideoSpecification;)V

    .line 364
    invoke-static {v7}, Lcom/google/android/videochat/VideoSpecification;->setMaxOutgoingNoEffects(Lcom/google/android/videochat/VideoSpecification;)V

    .line 365
    invoke-static {v8}, Lcom/google/android/videochat/VideoSpecification;->setMaxOutgoingWithEffects(Lcom/google/android/videochat/VideoSpecification;)V

    .line 367
    const-string v13, "talk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "is armv7: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v13, "talk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "has NEON: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mHasNEON:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v13, "talk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "supported front camera: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mFrontCamera:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v13, "talk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "has opengl2: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mGlv2:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v13, "talk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "effects enabled mask: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/google/android/talk/FeatureManager;->sEffectsEnabledMask:I
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$800()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v14, "talk"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "video chat support is "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/google/android/talk/FeatureManager;->sVideoChatEnabled:Z
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "enabled"

    :goto_3
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v14, "talk"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "audio chat support is "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/google/android/talk/FeatureManager;->sAudioChatEnabled:Z
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v13, "enabled"

    :goto_4
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mAccountId:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_11

    .line 378
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mAccountId:J

    # invokes: Lcom/google/android/talk/FeatureManager;->setAccountFeatures(J)V
    invoke-static {v13, v14}, Lcom/google/android/talk/FeatureManager;->access$900(J)V

    .line 385
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    return-void

    .line 243
    .end local v6    # "maxIncomingVideoSpec":Lcom/google/android/videochat/VideoSpecification;
    .end local v7    # "maxOutgoingSpecNoEffects":Lcom/google/android/videochat/VideoSpecification;
    .end local v8    # "maxOutgoingSpecWithEffects":Lcom/google/android/videochat/VideoSpecification;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 283
    .restart local v4    # "hvgaSetting":Ljava/lang/String;
    .restart local v6    # "maxIncomingVideoSpec":Lcom/google/android/videochat/VideoSpecification;
    .restart local v7    # "maxOutgoingSpecNoEffects":Lcom/google/android/videochat/VideoSpecification;
    .restart local v8    # "maxOutgoingSpecWithEffects":Lcom/google/android/videochat/VideoSpecification;
    .restart local v10    # "readOverrides":Z
    .restart local v12    # "useHVGA":Z
    :cond_a
    const-string v13, "auto"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 284
    const/4 v10, 0x0

    .line 285
    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mMulticore:Z

    if-eqz v13, :cond_2

    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mHasNEON:Z

    if-eqz v13, :cond_2

    .line 286
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 295
    :cond_b
    const-string v13, "low"

    # setter for: Lcom/google/android/talk/FeatureManager;->sDefaultVideoChatEffect:Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    if-eqz v10, :cond_3

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_default_fx"

    invoke-static {v13, v14}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 300
    .local v11, "s":Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 301
    # setter for: Lcom/google/android/talk/FeatureManager;->sDefaultVideoChatEffect:Ljava/lang/String;
    invoke-static {v11}, Lcom/google/android/talk/FeatureManager;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_max_in_vid"

    invoke-static {v13, v14}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 305
    if-eqz v11, :cond_d

    .line 306
    invoke-static {v11}, Lcom/google/android/videochat/VideoSpecification;->getFromString(Ljava/lang/String;)Lcom/google/android/videochat/VideoSpecification;

    move-result-object v6

    .line 308
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_max_out_nofx_vid"

    invoke-static {v13, v14}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 310
    if-eqz v11, :cond_e

    .line 311
    invoke-static {v11}, Lcom/google/android/videochat/VideoSpecification;->getFromString(Ljava/lang/String;)Lcom/google/android/videochat/VideoSpecification;

    move-result-object v7

    .line 313
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_max_out_fx_vid"

    invoke-static {v13, v14}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 315
    if-eqz v11, :cond_3

    .line 316
    invoke-static {v11}, Lcom/google/android/videochat/VideoSpecification;->getFromString(Ljava/lang/String;)Lcom/google/android/videochat/VideoSpecification;

    move-result-object v8

    goto/16 :goto_2

    .line 372
    .end local v4    # "hvgaSetting":Ljava/lang/String;
    .end local v10    # "readOverrides":Z
    .end local v11    # "s":Ljava/lang/String;
    .end local v12    # "useHVGA":Z
    :cond_f
    const-string v13, "disabled"

    goto/16 :goto_3

    .line 374
    :cond_10
    const-string v13, "disabled"

    goto/16 :goto_4

    .line 380
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/talk/DatabaseUtils;->getAccountIds(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 381
    .local v1, "accountId":J
    # invokes: Lcom/google/android/talk/FeatureManager;->setAccountFeatures(J)V
    invoke-static {v1, v2}, Lcom/google/android/talk/FeatureManager;->access$900(J)V

    goto :goto_5
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$1;-><init>(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    .local v0, "t":Ljava/lang/Thread;
    const-string v1, "SetFeaturesTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 235
    return-void
.end method
