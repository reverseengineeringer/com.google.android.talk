.class final Lfcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lav;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfcb;


# direct methods
.method constructor <init>(Lfcb;Lav;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lfcc;->c:Lfcb;

    iput-object p2, p0, Lfcc;->a:Lav;

    iput-object p3, p0, Lfcc;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lfcc;->a:Lav;

    iget-object v1, p0, Lfcc;->b:Ljava/lang/String;

    invoke-static {v1}, Laal;->q(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lav;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
