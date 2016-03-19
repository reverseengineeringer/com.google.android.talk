.class public final Legx;
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
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Legx;->a:Ljava/lang/String;

    .line 22
    iput p2, p0, Legx;->b:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljyd;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Ljyd;->a:Ljxw;

    iget-object v0, v0, Ljxw;->a:Ljava/lang/String;

    iput-object v0, p0, Legx;->a:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Ljyd;->c:Ljava/lang/Integer;

    .line 1043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 27
    iput v0, p0, Legx;->b:I

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Legx;->a:Ljava/lang/String;

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
    .line 40
    new-instance v0, Lbfz;

    .line 2036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 40
    invoke-direct {v0, v1, p1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 42
    new-instance v1, Ldva;

    invoke-direct {v1, p0}, Ldva;-><init>(Legx;)V

    .line 43
    invoke-virtual {v1, v0}, Ldva;->b(Lbfz;)V

    .line 44
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Legx;->b:I

    return v0
.end method
