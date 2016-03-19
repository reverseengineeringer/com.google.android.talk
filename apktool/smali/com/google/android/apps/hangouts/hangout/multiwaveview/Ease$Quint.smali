.class Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quint;
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
    .line 105
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quint$1;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quint$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quint;->easeIn:Landroid/animation/TimeInterpolator;

    .line 111
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quint$2;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quint$2;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quint;->easeOut:Landroid/animation/TimeInterpolator;

    .line 118
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quint$3;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quint$3;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quint;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
