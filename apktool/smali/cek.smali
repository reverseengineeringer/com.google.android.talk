.class final Lcek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lauj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lauj",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcej;


# direct methods
.method constructor <init>(Lcej;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcek;->b:Lcej;

    iput-object p2, p0, Lcek;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4043
    sget-object v0, Lcej;->a:Lezv;

    .line 3074
    iget-object v1, p0, Lcek;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 3075
    const-string v0, "Babel_glide"

    const-string v1, "Resource is ready."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return v3
.end method

.method public a(Lalm;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauw",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1043
    sget-object v0, Lcej;->a:Lezv;

    .line 58
    iget-object v1, p0, Lcek;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 59
    const-string v0, "Babel_glide"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Image Loading failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcek;->b:Lcej;

    .line 2043
    iget-object v0, v0, Lcej;->b:Landroid/content/Context;

    .line 60
    const-class v1, Lhpu;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v1

    .line 61
    iget-object v0, p0, Lcek;->b:Lcej;

    .line 3043
    iget-object v0, v0, Lcej;->b:Landroid/content/Context;

    .line 62
    const-class v2, Lhba;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    .line 63
    const/16 v1, 0xb8e

    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 64
    return v4
.end method
