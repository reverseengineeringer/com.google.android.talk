.class Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quad;
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
    .line 59
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quad$1;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quad$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quad;->easeIn:Landroid/animation/TimeInterpolator;

    .line 65
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quad$2;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quad$2;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    .line 71
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quad$3;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quad$3;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quad;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
