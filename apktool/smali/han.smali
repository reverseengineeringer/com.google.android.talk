.class public final Lhan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;
.implements Latn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapg",
        "<",
        "Lham;",
        "TT;>;",
        "Latn;"
    }
.end annotation


# instance fields
.field final a:Lapg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapg",
            "<",
            "Laot;",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:La;

.field private final c:Lapd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapd",
            "<",
            "Lham;",
            "Laot;",
            ">;"
        }
    .end annotation
.end field

.field private final d:La;


# direct methods
.method constructor <init>(Lapg;La;La;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapg",
            "<",
            "Laot;",
            "TT;>;",
            "La;",
            "La;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lapd;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Lapd;-><init>(I)V

    iput-object v0, p0, Lhan;->c:Lapd;

    .line 42
    iput-object p1, p0, Lhan;->a:Lapg;

    .line 43
    iput-object p2, p0, Lhan;->d:La;

    .line 44
    iput-object p3, p0, Lhan;->b:La;

    .line 48
    return-void
.end method


# virtual methods
.method a(Lham;II)Laot;
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p1}, Lham;->a()Lhav;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lhav;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lhan;->d:La;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lhan;->d:La;

    invoke-interface {v1}, La;->q()I

    move-result v1

    .line 83
    invoke-virtual {p1}, Lham;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lhav;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    iget-object v1, p0, Lhan;->b:La;

    if-nez v1, :cond_2

    .line 92
    sget-object v1, Laou;->b:Laou;

    .line 93
    :goto_1
    new-instance v2, Laot;

    invoke-direct {v2, v0, v1}, Laot;-><init>(Ljava/lang/String;Laou;)V

    return-object v2

    .line 85
    :cond_0
    invoke-virtual {p1}, Lham;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lhav;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Lham;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lhav;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_2
    iget-object v1, p0, Lhan;->b:La;

    invoke-interface {v1}, La;->p()Laou;

    move-result-object v1

    goto :goto_1
.end method

.method public synthetic a(Ljava/lang/Object;IILaja;)Laph;
    .locals 8

    .prologue
    move-object v3, p1

    .line 28
    check-cast v3, Lham;

    .line 1053
    iget-object v0, p0, Lhan;->c:Lapd;

    invoke-virtual {v0, v3, p2, p3}, Lapd;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laot;

    .line 1054
    if-nez v0, :cond_0

    .line 1055
    invoke-virtual {p0, v3, p2, p3}, Lhan;->a(Lham;II)Laot;

    move-result-object v0

    .line 1056
    iget-object v1, p0, Lhan;->c:Lapd;

    invoke-virtual {v1, v3, p2, p3, v0}, Lapd;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_0
    move-object v7, v0

    .line 1059
    const-string v0, "FifeModelLoader"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    const-string v0, "Loading fife model, url: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x32

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1067
    :cond_1
    iget-object v0, p0, Lhan;->a:Lapg;

    invoke-interface {v0, v7, p2, p3, p4}, Lapg;->a(Ljava/lang/Object;IILaja;)Laph;

    move-result-object v1

    .line 1068
    if-eqz v1, :cond_3

    .line 1069
    iget-object v0, p0, Lhan;->b:La;

    if-nez v0, :cond_2

    .line 1070
    iget-object v0, v1, Laph;->c:Lajf;

    .line 1071
    :goto_0
    new-instance v1, Laph;

    new-instance v2, Lhau;

    invoke-direct {v2, v7}, Lhau;-><init>(Laot;)V

    invoke-direct {v1, v2, v0}, Laph;-><init>(Laiw;Lajf;)V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 1070
    :cond_2
    new-instance v0, Lhao;

    iget-object v2, v1, Laph;->c:Lajf;

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lhao;-><init>(Lhan;Lajf;Lham;IILaja;)V

    goto :goto_0

    .line 1073
    :cond_3
    const/4 v0, 0x0

    .line 28
    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
