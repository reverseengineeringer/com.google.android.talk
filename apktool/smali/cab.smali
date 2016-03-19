.class final Lcab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcaa;


# direct methods
.method constructor <init>(Lcaa;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcab;->b:Lcaa;

    iput-object p2, p0, Lcab;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcab;->a:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    return-void

    .line 95
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
