.class final Lfcf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lfch;

.field final synthetic b:Lfce;


# direct methods
.method constructor <init>(Lfce;Lfch;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lfcf;->b:Lfce;

    iput-object p2, p0, Lfcf;->a:Lfch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lfcf;->a:Lfch;

    iget-object v1, p0, Lfcf;->b:Lfce;

    invoke-virtual {v0, v1}, Lfch;->a(Lfce;)V

    .line 196
    return-void
.end method
