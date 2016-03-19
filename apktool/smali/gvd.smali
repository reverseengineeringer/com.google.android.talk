.class public final Lgvd;
.super Ljava/lang/Object;

# interfaces
.implements Lgrk;


# instance fields
.field private a:I

.field private b:Lgrm;


# direct methods
.method public constructor <init>(Lgrk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lgrk;->b()I

    move-result v0

    iput v0, p0, Lgvd;->a:I

    invoke-interface {p1}, Lgrk;->W_()Lgrm;

    move-result-object v0

    invoke-interface {v0}, Lgrm;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgrm;

    iput-object v0, p0, Lgvd;->b:Lgrm;

    return-void
.end method


# virtual methods
.method public O_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W_()Lgrm;
    .locals 1

    iget-object v0, p0, Lgvd;->b:Lgrm;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lgvd;->a:I

    return v0
.end method

.method public synthetic f()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lgvd;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "changed"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataEventEntity{ type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataitem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgvd;->W_()Lgrm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lgvd;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "deleted"

    goto :goto_0

    :cond_1
    const-string v0, "unknown"

    goto :goto_0
.end method
