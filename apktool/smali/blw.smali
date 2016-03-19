.class public final Lblw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field b:Lbfd;

.field c:Lbjb;

.field d:Lcyx;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lblw;->a:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public a()Landroid/app/AlertDialog;
    .locals 7

    .prologue
    .line 88
    iget-object v0, p0, Lblw;->b:Lbfd;

    invoke-static {v0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lblw;->c:Lbjb;

    invoke-static {v0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lblw;->e:Ljava/lang/String;

    invoke-static {v0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lblw;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lblw;->a:Landroid/content/Context;

    const v3, 0x1090003

    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 95
    iget-object v2, p0, Lblw;->b:Lbfd;

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    .line 1109
    new-instance v3, Lbmh;

    iget-object v4, p0, Lblw;->a:Landroid/content/Context;

    iget-object v5, p0, Lblw;->c:Lbjb;

    iget-object v5, v5, Lbjb;->a:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v2, v6}, Lbmh;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1113
    new-instance v3, Lbmh;

    iget-object v4, p0, Lblw;->a:Landroid/content/Context;

    iget-object v5, p0, Lblw;->c:Lbjb;

    iget-object v5, v5, Lbjb;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v2, v6}, Lbmh;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1117
    new-instance v3, Lbly;

    const-string v4, "Remove conversation"

    invoke-direct {v3, p0, v4, v2}, Lbly;-><init>(Lblw;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1137
    new-instance v3, Lbma;

    const-string v4, "Inspect conversation"

    invoke-direct {v3, p0, v4}, Lbma;-><init>(Lblw;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1145
    new-instance v3, Lbmb;

    const-string v4, "Email conversation"

    invoke-direct {v3, p0, v4}, Lbmb;-><init>(Lblw;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1168
    new-instance v3, Lbmd;

    const-string v4, "Show SMS target"

    invoke-direct {v3, p0, v4, v2}, Lbmd;-><init>(Lblw;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1196
    new-instance v2, Lbmf;

    const-string v3, "Start Stress Test"

    invoke-direct {v2, p0, v3}, Lbmf;-><init>(Lblw;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1210
    new-instance v2, Lbmj;

    const-string v3, "Debug contact info"

    invoke-direct {v2, p0, v3}, Lbmj;-><init>(Lblw;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 96
    new-instance v2, Lblx;

    invoke-direct {v2, p0, v1}, Lblx;-><init>(Lblw;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbfd;)Lblw;
    .locals 1

    .prologue
    .line 66
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfd;

    iput-object v0, p0, Lblw;->b:Lbfd;

    .line 67
    return-object p0
.end method

.method public a(Lbjb;)Lblw;
    .locals 1

    .prologue
    .line 72
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    iput-object v0, p0, Lblw;->c:Lbjb;

    .line 73
    return-object p0
.end method

.method public a(Lcyx;)Lblw;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lblw;->d:Lcyx;

    .line 79
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lblw;
    .locals 1

    .prologue
    .line 83
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lblw;->e:Ljava/lang/String;

    .line 84
    return-object p0
.end method
