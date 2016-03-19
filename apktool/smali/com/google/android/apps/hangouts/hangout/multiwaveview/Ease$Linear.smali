.class Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Linear;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final easeNone:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Linear$1;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Linear$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Linear;->easeNone:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
