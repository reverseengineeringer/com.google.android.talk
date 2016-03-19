.class public final Lgrh;
.super Ljava/lang/Object;

# interfaces
.implements Lfim;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/Status;

.field public final b:Lgrm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lgrm;)V
    .locals 0

    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgrh;->a:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lgrh;->b:Lgrm;

    return-void
.end method


# virtual methods
.method public j()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lgrh;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
