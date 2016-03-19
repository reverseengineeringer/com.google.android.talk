.class final Lfcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lfch;

.field final synthetic b:Lfce;


# direct methods
.method constructor <init>(Lfce;Lfch;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lfcg;->b:Lfce;

    iput-object p2, p0, Lfcg;->a:Lfch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lfcg;->a:Lfch;

    iget-object v1, p0, Lfcg;->b:Lfce;

    invoke-virtual {v0, v1}, Lfch;->a(Lfce;)V

    .line 204
    const/4 v0, 0x1

    return v0
.end method
