.class Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart;
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
    .line 82
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart$1;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart;->easeIn:Landroid/animation/TimeInterpolator;

    .line 88
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart$2;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart$2;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    .line 94
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart$3;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart$3;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
