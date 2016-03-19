.class public final Lgrj;
.super Ljava/lang/Object;

# interfaces
.implements Lfim;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/Status;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;I)V
    .locals 0

    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgrj;->a:Lcom/google/android/gms/common/api/Status;

    iput p2, p0, Lgrj;->b:I

    return-void
.end method


# virtual methods
.method public j()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lgrj;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
