.class public final Legp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Legs;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Lkdl;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-object v0, p1, Lkdl;->b:Ljava/lang/Integer;

    .line 1043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 21
    iput v0, p0, Legp;->b:I

    .line 22
    iget-object v0, p1, Lkdl;->a:Ljxw;

    iget-object v0, v0, Ljxw;->a:Ljava/lang/String;

    iput-object v0, p0, Legp;->a:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Legp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(ILknq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iget v0, p0, Legp;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 36
    new-instance v0, Lbfz;

    .line 2036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 36
    invoke-direct {v0, v1, p1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 37
    iget-object v1, p0, Legp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbfz;->r(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Legp;->b:I

    return v0
.end method
