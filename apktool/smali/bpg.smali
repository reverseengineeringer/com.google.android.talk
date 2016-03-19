.class final Lbpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linv;
.implements Liny;
.implements Lioz;


# instance fields
.field a:I

.field b:Z

.field final synthetic c:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 1

    .prologue
    .line 1072
    iput-object p1, p0, Lbpg;->c:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1080
    sget v0, Lbpi;->a:I

    iput v0, p0, Lbpg;->a:I

    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbpg;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1129
    sget v0, Lbpi;->c:I

    iput v0, p0, Lbpg;->a:I

    .line 1130
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1114
    new-instance v0, Lbph;

    invoke-direct {v0, p0}, Lbph;-><init>(Lbpg;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 1125
    return-void
.end method
