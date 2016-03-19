.class final Lbpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjl;


# instance fields
.field final synthetic a:Lbpu;


# direct methods
.method constructor <init>(Lbpu;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lbpw;->a:Lbpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;I)Lhtu;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lbrs;

    .line 52
    invoke-static {p2}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, p4}, Lbrs;-><init>(Landroid/content/Context;Lbfd;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Lbrs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
