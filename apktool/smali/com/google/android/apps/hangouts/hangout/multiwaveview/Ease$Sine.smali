.class Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Sine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Sine$1;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Sine$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Sine;->easeIn:Landroid/animation/TimeInterpolator;

    .line 135
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Sine$2;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Sine$2;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    .line 141
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Sine$3;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Sine$3;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Sine;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
