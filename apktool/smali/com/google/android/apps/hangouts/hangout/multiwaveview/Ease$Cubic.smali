.class Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic;
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
    .line 36
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic$1;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    .line 42
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic$2;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic$2;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 48
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic$3;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic$3;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
