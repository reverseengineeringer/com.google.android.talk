.class public final Lgob;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/common/data/DataHolder;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lgob;->c:I

    iput-object p1, p0, Lgob;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->d()I

    move-result v0

    iput v0, p0, Lgob;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lgob;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lgob;->a:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lgob;->c:I

    iget-object v2, p0, Lgob;->a:Lcom/google/android/gms/common/data/DataHolder;

    iget v3, p0, Lgob;->c:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lgob;->c:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lgob;->c:I

    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lgob;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgob;->c:I

    iget v0, p0, Lgob;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, Lgob;->c:I

    iget v1, p0, Lgob;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lgob;->c:I

    iget v1, p0, Lgob;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
