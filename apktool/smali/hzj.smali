.class public final Lhzj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:Z


# direct methods
.method constructor <init>(Lhzk;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    iget v0, p1, Lhzk;->a:I

    .line 22
    iput v0, p0, Lhzj;->a:I

    .line 2033
    iget v0, p1, Lhzk;->b:I

    .line 23
    iput v0, p0, Lhzj;->b:I

    .line 3033
    iget v0, p1, Lhzk;->c:I

    .line 24
    iput v0, p0, Lhzj;->c:I

    .line 4033
    iget-wide v0, p1, Lhzk;->d:J

    .line 25
    iput-wide v0, p0, Lhzj;->d:J

    .line 5033
    iget-wide v0, p1, Lhzk;->e:J

    .line 26
    iput-wide v0, p0, Lhzj;->e:J

    .line 6033
    iget-boolean v0, p1, Lhzk;->f:Z

    .line 27
    iput-boolean v0, p0, Lhzj;->f:Z

    .line 28
    return-void
.end method
