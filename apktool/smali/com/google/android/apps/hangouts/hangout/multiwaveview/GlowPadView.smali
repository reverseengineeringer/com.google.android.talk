.class public Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Babel_GlowPadView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final WAVE_ANIMATION_DURATION:I = 0x546


# instance fields
.field private mActiveTarget:I

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

.field private mHorizontalInset:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

.field private mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

.field private mPointerId:I

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/16 v8, 0x30

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    .line 105
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    .line 106
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 115
    iput v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 124
    iput v7, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 125
    iput v7, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 167
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$1;-><init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 176
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$2;-><init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 186
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$3;-><init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 195
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$4;-><init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 213
    iput v8, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGravity:I

    .line 214
    iput-boolean v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 228
    sget-object v0, Lawl;->K:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 229
    sget v0, Lawl;->Q:I

    iget v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mInnerRadius:F

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 230
    sget v0, Lawl;->R:I

    iget v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 231
    sget v0, Lawl;->U:I

    iget v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 232
    sget v0, Lawl;->X:I

    iget v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 233
    sget v0, Lawl;->N:I

    iget v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 234
    sget v0, Lawl;->P:I

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 235
    new-instance v6, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    invoke-direct {v6, v4, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    sget-object v6, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v6}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 237
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    sget v6, Lawl;->S:I

    .line 238
    invoke-direct {p0, v5, v6}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v6

    invoke-direct {v0, v4, v6}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 240
    sget v0, Lawl;->L:I

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    .line 242
    sget v0, Lawl;->T:I

    invoke-direct {p0, v5, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v0

    .line 243
    if-eqz v0, :cond_3

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    :goto_1
    sget v2, Lawl;->O:I

    invoke-virtual {v5, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowRadius:F

    .line 246
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 249
    sget v4, Lawl;->W:I

    invoke-virtual {v5, v4, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v4}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    .line 252
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 253
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify at least one target drawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    .line 235
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 243
    goto :goto_1

    .line 257
    :cond_4
    sget v4, Lawl;->V:I

    invoke-virtual {v5, v4, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 258
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    .line 259
    if-nez v4, :cond_5

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify target descriptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_5
    invoke-virtual {p0, v4}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 266
    :cond_6
    sget v4, Lawl;->M:I

    invoke-virtual {v5, v4, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 267
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 268
    if-nez v2, :cond_7

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify direction descriptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_7
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 274
    :cond_8
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    new-array v2, v3, [I

    const v4, 0x10100b3

    aput v4, v2, v1

    .line 278
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 279
    invoke-virtual {v2, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGravity:I

    .line 280
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    iget v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVibrationDuration:I

    if-lez v2, :cond_9

    move v1, v3

    :cond_9
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->setVibrateEnabled(Z)V

    .line 284
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->assignDefaultsIfNeeded()V

    .line 286
    new-instance v1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    invoke-direct {v1, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mInnerRadius:F

    iget v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->makePointCloud(FF)V

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->setRadius(F)V

    .line 289
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;IFF)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;I)I
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;ZZ)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic access$802(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    return-object v0
.end method

.method private announceTargets()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1218
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v1

    .line 1219
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1220
    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v4

    .line 1221
    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v5

    .line 1222
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1223
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1224
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1227
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1228
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lezc;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;)V

    .line 1230
    :cond_2
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1073
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 1076
    :cond_0
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1077
    const/4 v0, 0x1

    const/high16 v1, 0x41a00000    # 20.0f

    .line 1081
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1078
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 1083
    :cond_1
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 1086
    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1093
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGravity:I

    .line 1095
    and-int/lit8 v1, v0, 0x7

    packed-switch v1, :pswitch_data_0

    .line 1104
    :pswitch_0
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHorizontalInset:I

    .line 1107
    :goto_0
    and-int/lit8 v0, v0, 0x70

    sparse-switch v0, :sswitch_data_0

    .line 1116
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVerticalInset:I

    .line 1119
    :goto_1
    return-void

    .line 1097
    :pswitch_1
    iput v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1100
    :pswitch_2
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1109
    :sswitch_0
    iput v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1112
    :sswitch_1
    iput p2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1095
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1107
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 452
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 453
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 454
    sget-object v3, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 452
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 456
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 457
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 475
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->vibrate()V

    .line 466
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 469
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2

    .prologue
    .line 1201
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 478
    iget v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 479
    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    move v0, v1

    .line 481
    :goto_0
    if-eqz v0, :cond_2

    .line 486
    invoke-direct {p0, v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->highlightSelected(I)V

    .line 489
    const/16 v0, 0x4b0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v5, v0, v4, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 490
    invoke-direct {p0, v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V

    .line 491
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 501
    :cond_0
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 502
    return-void

    :cond_1
    move v0, v2

    .line 479
    goto :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v5, v2, v4, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 498
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method private dump()V
    .locals 5

    .prologue
    const/16 v4, 0x1d

    const/16 v3, 0x1c

    .line 297
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 298
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mSnapMargin:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 299
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mFeedbackCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVibrationDuration:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowRadius:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GlowRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 302
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterX:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 303
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterY:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 304
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    :cond_0
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1249
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1254
    const/4 v0, 0x0

    .line 1257
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 293
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method private getScaledGlowRadiusSquared()F
    .locals 2

    .prologue
    .line 1207
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1208
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    const v0, 0x3fa66666    # 1.3f

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowRadius:F

    mul-float/2addr v0, v1

    .line 1213
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->square(F)F

    move-result v0

    return v0

    .line 1211
    :cond_0
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowRadius:F

    goto :goto_0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    :cond_0
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1235
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1240
    const/4 v0, 0x0

    .line 1243
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 914
    iput v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 916
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 917
    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 918
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 919
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 886
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 887
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 888
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 889
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 890
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDragging:Z

    .line 896
    :goto_0
    return-void

    .line 893
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointerId:I

    .line 894
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 24

    .prologue
    .line 922
    const/4 v5, -0x1

    .line 923
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v9

    .line 924
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 925
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 926
    const/4 v4, 0x0

    .line 927
    const/4 v3, 0x0

    .line 928
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 930
    const/4 v2, -0x1

    if-ne v12, v2, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    const/4 v2, 0x0

    move v6, v2

    move v2, v3

    move v3, v4

    move v4, v5

    :goto_1
    add-int/lit8 v5, v9, 0x1

    if-ge v6, v5, :cond_a

    .line 935
    if-ge v6, v9, :cond_5

    .line 936
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v6}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v2

    move v5, v2

    .line 937
    :goto_2
    if-ge v6, v9, :cond_6

    .line 938
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v6}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v2

    .line 940
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v13, v5, v3

    .line 941
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v14, v2, v3

    .line 942
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 943
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    cmpl-float v7, v3, v7

    if-lez v7, :cond_7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    div-float v3, v7, v3

    .line 944
    :goto_4
    mul-float v8, v13, v3

    .line 945
    mul-float v7, v14, v3

    .line 946
    neg-float v3, v14

    float-to-double v0, v3

    move-wide/from16 v16, v0

    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    .line 948
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDragging:Z

    if-nez v3, :cond_2

    .line 949
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 952
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDragging:Z

    if-eqz v2, :cond_9

    .line 954
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mSnapMargin:F

    sub-float/2addr v2, v3

    .line 955
    mul-float v5, v2, v2

    .line 957
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v11, :cond_9

    .line 958
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 960
    int-to-double v0, v3

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v20

    int-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    .line 961
    int-to-double v0, v3

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v22

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    mul-double v20, v20, v22

    int-to-double v0, v11

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    .line 962
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 963
    cmpl-double v2, v16, v18

    if-lez v2, :cond_3

    cmpg-double v2, v16, v20

    if-lez v2, :cond_4

    :cond_3
    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    add-double v22, v22, v16

    cmpl-double v2, v22, v18

    if-lez v2, :cond_8

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    add-double v18, v18, v16

    cmpg-double v2, v18, v20

    if-gtz v2, :cond_8

    :cond_4
    const/4 v2, 0x1

    .line 967
    :goto_6
    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_f

    move v2, v3

    .line 957
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    goto :goto_5

    .line 936
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move v5, v2

    goto/16 :goto_2

    .line 938
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    goto/16 :goto_3

    .line 943
    :cond_7
    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 963
    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .line 934
    :cond_9
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v3, v8

    move v2, v7

    goto/16 :goto_1

    .line 977
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDragging:Z

    if-eqz v5, :cond_0

    .line 981
    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    .line 982
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 983
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 989
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mActiveTarget:I

    if-eq v2, v4, :cond_d

    .line 991
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mActiveTarget:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 992
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mActiveTarget:I

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 993
    sget-object v3, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 994
    sget-object v3, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 998
    :cond_b
    const/4 v2, -0x1

    if-eq v4, v2, :cond_d

    .line 999
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 1000
    sget-object v3, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1001
    sget-object v3, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 1004
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 1005
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1006
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1007
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lezc;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;)V

    .line 1011
    :cond_d
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mActiveTarget:I

    goto/16 :goto_0

    .line 985
    :cond_e
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 986
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto :goto_8

    :cond_f
    move v2, v4

    goto/16 :goto_7
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 902
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 903
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointerId:I

    if-ne v1, v2, :cond_0

    .line 904
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 906
    :cond_0
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 429
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 436
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 438
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 440
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 442
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    .line 430
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    move-result-object v1

    .line 429
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 448
    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 13

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 522
    iput-boolean p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 523
    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    move v4, v0

    .line 524
    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    move v3, v0

    .line 526
    :goto_1
    if-eqz p2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v0

    .line 527
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 528
    sget-object v6, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 529
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-ge v2, v5, :cond_3

    .line 530
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 531
    sget-object v7, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v7}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 532
    iget-object v7, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v8, v4

    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    .line 539
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    .line 541
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    .line 543
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    .line 545
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    iget-object v12, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v12, v10, v11

    .line 533
    invoke-static {v0, v8, v9, v10}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    move-result-object v0

    .line 532
    invoke-virtual {v7, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 529
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 523
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 524
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 526
    :cond_2
    const v0, 0x3f4ccccd    # 0.8f

    move v1, v0

    goto :goto_2

    .line 550
    :cond_3
    if-eqz p2, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 551
    :goto_4
    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    int-to-long v4, v4

    const/16 v7, 0xe

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ease"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    const/4 v6, 0x2

    const-string v8, "alpha"

    aput-object v8, v7, v6

    const/4 v6, 0x3

    const/4 v8, 0x0

    .line 558
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x4

    const-string v8, "scaleX"

    aput-object v8, v7, v6

    const/4 v6, 0x5

    .line 560
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x6

    const-string v8, "scaleY"

    aput-object v8, v7, v6

    const/4 v6, 0x7

    .line 562
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v6

    const/16 v0, 0x8

    const-string v6, "delay"

    aput-object v6, v7, v0

    const/16 v0, 0x9

    .line 564
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v0

    const/16 v0, 0xa

    const-string v3, "onUpdate"

    aput-object v3, v7, v0

    const/16 v0, 0xb

    iget-object v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v3, v7, v0

    const/16 v0, 0xc

    const-string v3, "onComplete"

    aput-object v3, v7, v0

    const/16 v0, 0xd

    iget-object v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v3, v7, v0

    .line 552
    invoke-static {v2, v4, v5, v7}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    move-result-object v0

    .line 551
    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 571
    return-void

    .line 550
    :cond_4
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_4
.end method

.method private hideUnselected(I)V
    .locals 3

    .prologue
    .line 511
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 512
    if-eq v1, p1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 511
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 516
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 507
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->hideUnselected(I)V

    .line 508
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 8

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 649
    iput-object v4, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 650
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetResourceId:I

    .line 652
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 653
    sget v1, Laal;->eI:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 654
    sget v1, Laal;->es:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 655
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 656
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_1

    .line 657
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 658
    rem-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_0

    .line 660
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v7, v1

    move v1, v0

    move v0, v7

    .line 656
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v2

    goto :goto_1

    .line 666
    :cond_1
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    if-eq v0, v1, :cond_3

    .line 667
    :cond_2
    iput v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    .line 668
    iput v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    .line 669
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->requestLayout()V

    .line 674
    :goto_2
    return-void

    .line 671
    :cond_3
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 672
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_2
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1262
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1263
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1264
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1265
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1266
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1268
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1269
    return-object v3
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 634
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 635
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 636
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    .line 637
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 638
    :goto_0
    if-ge v2, v5, :cond_1

    .line 639
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 640
    new-instance v7, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    invoke-direct {v7, v3, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 641
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 640
    goto :goto_1

    .line 643
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 644
    return-object v6
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1303
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return v1

    .line 1308
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1309
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 1310
    :goto_1
    if-ge v2, v4, :cond_2

    .line 1311
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 1312
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 1313
    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1314
    const/4 v0, 0x1

    .line 1310
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1318
    :cond_2
    if-eqz v1, :cond_0

    .line 1319
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->requestLayout()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private resolveMeasured(II)I
    .locals 2

    .prologue
    .line 337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 338
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p2, v0

    .line 349
    :goto_0
    :sswitch_0
    return p2

    .line 343
    :sswitch_1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 338
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1041
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 1042
    if-eqz p1, :cond_0

    .line 1043
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->vibrate()V

    .line 1045
    :cond_0
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGrabbedState:I

    .line 1046
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 1047
    if-nez p1, :cond_2

    .line 1048
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 1052
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1055
    :cond_1
    return-void

    .line 1050
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 416
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 418
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    .line 410
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 424
    return-void
.end method

.method private showTargets(Z)V
    .locals 11

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 575
    iput-boolean p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 576
    if-eqz p1, :cond_0

    const/16 v0, 0x32

    move v3, v0

    .line 577
    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    move v1, v0

    .line 578
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 579
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_2

    .line 580
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 581
    sget-object v5, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v5}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 582
    iget-object v5, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v6, v1

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    .line 589
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "scaleX"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/high16 v10, 0x3f800000    # 1.0f

    .line 591
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "scaleY"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/high16 v10, 0x3f800000    # 1.0f

    .line 593
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "delay"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    .line 595
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    iget-object v10, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    .line 583
    invoke-static {v0, v6, v7, v8}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    move-result-object v0

    .line 582
    invoke-virtual {v5, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 576
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 577
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    int-to-long v4, v1

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ease"

    aput-object v7, v1, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v7, v1, v6

    const/4 v6, 0x2

    const-string v7, "alpha"

    aput-object v7, v1, v6

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    .line 606
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x4

    const-string v7, "scaleX"

    aput-object v7, v1, v6

    const/4 v6, 0x5

    const/high16 v7, 0x3f800000    # 1.0f

    .line 608
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x6

    const-string v7, "scaleY"

    aput-object v7, v1, v6

    const/4 v6, 0x7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 610
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v1, v6

    const/16 v6, 0x8

    const-string v7, "delay"

    aput-object v7, v1, v6

    const/16 v6, 0x9

    .line 612
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    const/16 v3, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v1, v3

    const/16 v3, 0xb

    iget-object v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v1, v3

    const/16 v3, 0xc

    const-string v6, "onComplete"

    aput-object v6, v1, v3

    const/16 v3, 0xd

    iget-object v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v6, v1, v3

    .line 600
    invoke-static {v2, v4, v5, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    move-result-object v1

    .line 599
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 619
    return-void
.end method

.method private square(F)F
    .locals 1

    .prologue
    .line 1197
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 6

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 815
    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 816
    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 819
    :cond_0
    int-to-long v2, p1

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ease"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "alpha"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    .line 826
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "delay"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const/16 v5, 0x32

    .line 828
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 820
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    .line 829
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 831
    :cond_1
    return-void
.end method

.method private startWaveAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 773
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 774
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 775
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 776
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 783
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v6, v7

    .line 785
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$5;

    invoke-direct {v6, p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$5;-><init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)V

    aput-object v6, v4, v5

    .line 777
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    move-result-object v1

    .line 776
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 797
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 769
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 770
    return-void
.end method

.method private switchToState(IFF)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 363
    packed-switch p1, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 365
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 366
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 367
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 368
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 369
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 373
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 377
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 378
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 379
    invoke-direct {p0, v5}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->showTargets(Z)V

    .line 380
    const/16 v0, 0xc8

    invoke-direct {p0, v0, v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 381
    invoke-direct {p0, v5}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 383
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 384
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->announceTargets()V

    goto :goto_0

    .line 390
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 391
    invoke-direct {p0, v1, v1, v3, v4}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 396
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 397
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 401
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->doFinish()V

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1058
    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v1, p1, v1

    .line 1059
    iget v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v2, p2, v2

    .line 1060
    iget-boolean v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 1064
    :cond_0
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 1065
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1066
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDragging:Z

    .line 1069
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateGlowPosition(FF)V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->setX(F)V

    .line 882
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->glowManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$GlowManager;->setY(F)V

    .line 883
    return-void
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->setCenter(FF)V

    .line 1176
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 10

    .prologue
    .line 1161
    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1162
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1163
    const-wide v0, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    int-to-double v4, v3

    div-double/2addr v0, v4

    double-to-float v4, v0

    .line 1164
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1165
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 1166
    int-to-float v5, v1

    mul-float/2addr v5, v4

    .line 1167
    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1168
    invoke-virtual {v0, p2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1169
    iget v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setX(F)V

    .line 1170
    iget v6, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setY(F)V

    .line 1164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1172
    :cond_0
    return-void
.end method

.method private vibrate()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 626
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    .line 625
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVibrationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 631
    :cond_0
    return-void

    .line 625
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 1274
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v0

    goto :goto_0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 2

    .prologue
    .line 1293
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 1295
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1299
    :goto_1
    return v1

    .line 1293
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1299
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetResourceId:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1181
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1182
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1183
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 1185
    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1183
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1190
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1018
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1020
    packed-switch v0, :pswitch_data_0

    .line 1031
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1032
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1034
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1022
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1025
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1028
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 1123
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1124
    sub-int v0, p4, p2

    .line 1125
    sub-int v1, p5, p3

    .line 1129
    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1130
    iget-object v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1131
    iget v4, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHorizontalInset:I

    int-to-float v4, v4

    int-to-float v0, v0

    iget v5, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v6

    add-float/2addr v0, v4

    .line 1132
    iget v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVerticalInset:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget v4, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1133
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v6

    add-float/2addr v1, v2

    .line 1135
    iget-boolean v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mInitialLayout:Z

    if-eqz v2, :cond_0

    .line 1136
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 1137
    invoke-direct {p0, v7, v7}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 1138
    iput-boolean v7, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 1141
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1142
    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOuterRing:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1144
    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1145
    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1147
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 1148
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    .line 1149
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1151
    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterX:F

    .line 1152
    iput v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveCenterY:F

    .line 1157
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 355
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 356
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v2

    .line 357
    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v3

    .line 358
    sub-int v0, v2, v0

    sub-int v1, v3, v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->computeInsets(II)V

    .line 359
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->setMeasuredDimension(II)V

    .line 360
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 837
    const/4 v0, 0x0

    .line 838
    packed-switch v2, :pswitch_data_0

    .line 876
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->invalidate()V

    .line 877
    if-eqz v0, :cond_0

    :goto_1
    return v1

    .line 844
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 845
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 847
    goto :goto_0

    .line 853
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 855
    goto :goto_0

    .line 862
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 863
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 865
    goto :goto_0

    .line 871
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 872
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 873
    goto :goto_0

    .line 877
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 749
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mFeedbackCount:I

    if-lez v0, :cond_0

    .line 750
    const/4 v2, 0x1

    .line 751
    iget-object v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    .line 754
    invoke-virtual {v3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v3, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {v3, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 756
    const-wide/16 v6, 0x2a3

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    move v0, v1

    .line 761
    :goto_0
    if-eqz v0, :cond_0

    .line 762
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->startWaveAnimation()V

    .line 765
    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1336
    if-nez p3, :cond_1

    .line 1365
    :cond_0
    :goto_0
    return v0

    .line 1341
    :cond_1
    if-eqz p1, :cond_2

    .line 1343
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1345
    const/16 v2, 0x80

    .line 1346
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1347
    if-eqz v2, :cond_2

    .line 1348
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1349
    if-eqz v2, :cond_2

    .line 1350
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1351
    invoke-direct {p0, v1, p3, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1361
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 1363
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, p3, p3}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    goto :goto_0

    .line 1355
    :catch_0
    move-exception v1

    .line 1356
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to swap drawable; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1358
    :catch_1
    move-exception v1

    const-string v1, "Failed to swap drawable from "

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 805
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 806
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 807
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 808
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 809
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 810
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Tweener;->reset()V

    .line 811
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 317
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 318
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 319
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1

    .prologue
    .line 719
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    .line 720
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 723
    :cond_0
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3

    .prologue
    .line 1278
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    .line 1280
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1281
    invoke-virtual {v0, p2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 1285
    :cond_0
    return-void

    .line 1278
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setHandleDrawable(Landroid/content/res/Resources;I)V
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1375
    :cond_0
    return-void
.end method

.method public setOnTriggerListener(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;)V
    .locals 0

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$OnTriggerListener;

    .line 1194
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1

    .prologue
    .line 698
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    .line 699
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 702
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 682
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mNewTargetResources:I

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2

    .prologue
    .line 738
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 743
    :goto_0
    return-void

    .line 741
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 310
    return-void
.end method
