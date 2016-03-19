.class final Lekz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijg;


# instance fields
.field final synthetic a:Lejs;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Leky;


# direct methods
.method constructor <init>(Leky;Lejs;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lekz;->d:Leky;

    iput-object p2, p0, Lekz;->a:Lejs;

    iput p3, p0, Lekz;->b:I

    iput-object p4, p0, Lekz;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lijc;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 82
    check-cast p2, Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lekz;->a:Lejs;

    invoke-virtual {v0}, Lejs;->b()Landroid/net/Uri;

    move-result-object v2

    .line 84
    if-nez v2, :cond_2

    move v0, v1

    .line 85
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 89
    iget v4, p0, Lekz;->b:I

    if-ne v4, v1, :cond_1

    if-ne v0, v3, :cond_0

    if-eqz v2, :cond_1

    .line 91
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    iget-object v0, p0, Lekz;->d:Leky;

    .line 1031
    iget-object v0, v0, Leky;->a:Lhpu;

    .line 93
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    const/16 v2, 0x63f

    .line 92
    invoke-static {v0, v2}, Laal;->a(Lbfd;I)V

    .line 98
    :cond_1
    iget-object v0, p0, Lekz;->a:Lejs;

    invoke-virtual {v0}, Lejs;->y()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lhpz;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iget-object v2, p0, Lekz;->d:Leky;

    .line 2031
    iget-object v2, v2, Leky;->a:Lhpu;

    .line 99
    invoke-interface {v2}, Lhpu;->a()I

    move-result v2

    .line 98
    invoke-interface {v0, v2}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    iget-object v2, p0, Lekz;->c:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v2, p2}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 101
    iget-object v0, p0, Lekz;->a:Lejs;

    invoke-virtual {v0, p2}, Lejs;->a(Ljava/lang/String;)V

    .line 102
    return v1

    .line 84
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
