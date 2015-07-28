.class Lcom/google/android/talk/ChatView$MessageItem;
.super Landroid/widget/RelativeLayout;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageItem"
.end annotation


# instance fields
.field private mAvatar:Lcom/google/android/talk/Divot;

.field private mBarColorNormal:I

.field private mBarColorTop:I

.field private mBody:Ljava/lang/String;

.field public mBold:Landroid/text/style/StyleSpan;

.field public mDateFormat:Ljava/text/DateFormat;

.field public mDateFormatStr:Ljava/lang/String;

.field private mIsFirstItemInList:Z

.field private mIsLastItemInList:Z

.field private mLinePoints:[F

.field private mMarkup:Lcom/google/android/talk/util/Markup;

.field private mMeString:Ljava/lang/CharSequence;

.field public mMessageBlock:Landroid/view/View;

.field public mMessageView:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field public mSB:Landroid/text/SpannableStringBuilder;

.field public mSentAt:Landroid/widget/TextView;

.field private mSpan:Landroid/text/style/LineHeightSpan;

.field public mStringBuilder:Ljava/lang/StringBuilder;

.field private mViewType:I

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;Landroid/app/Activity;I)V
    .locals 7
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "viewType"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1113
    iput-object p1, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    .line 1114
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1087
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mBold:Landroid/text/style/StyleSpan;

    .line 1088
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    .line 1095
    const/16 v1, 0x14

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    .line 1096
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mPaint:Landroid/graphics/Paint;

    .line 1102
    new-instance v1, Lcom/google/android/talk/ChatView$MessageItem$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$MessageItem$1;-><init>(Lcom/google/android/talk/ChatView$MessageItem;)V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 1115
    invoke-virtual {p1, v5}, Lcom/google/android/talk/ChatView;->setOrientation(I)V

    .line 1117
    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1119
    .local v0, "r":Landroid/content/res/Resources;
    packed-switch p3, :pswitch_data_0

    .line 1154
    :goto_0
    const v1, 0x7f10000a

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/Divot;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    .line 1155
    const v1, 0x7f100042

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    .line 1156
    const v1, 0x7f100043

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    .line 1157
    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMeString:Ljava/lang/CharSequence;

    .line 1158
    iput p3, p0, Lcom/google/android/talk/ChatView$MessageItem;->mViewType:I

    .line 1160
    # getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormat:Ljava/text/DateFormat;

    .line 1161
    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormatStr:Ljava/lang/String;

    .line 1163
    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mBarColorTop:I

    .line 1164
    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mBarColorNormal:I

    .line 1166
    new-instance v1, Lcom/google/android/talk/util/Markup;

    invoke-direct {v1, p2, v6, v6}, Lcom/google/android/talk/util/Markup;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMarkup:Lcom/google/android/talk/util/Markup;

    .line 1167
    const v1, 0x7f100041

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageBlock:Landroid/view/View;

    .line 1169
    # getter for: Lcom/google/android/talk/ChatView;->sReceiveBackgroundColor:I
    invoke-static {}, Lcom/google/android/talk/ChatView;->access$4800()I

    move-result v1

    if-nez v1, :cond_0

    .line 1170
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    # setter for: Lcom/google/android/talk/ChatView;->sReceiveBackgroundColor:I
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$4802(I)I

    .line 1172
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1173
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1175
    :cond_1
    invoke-virtual {p0, v6}, Lcom/google/android/talk/ChatView$MessageItem;->setWillNotDraw(Z)V

    .line 1176
    return-void

    .line 1121
    :pswitch_0
    # getter for: Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040019

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1122
    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b0012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b0013

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1129
    :pswitch_1
    # getter for: Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001b

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1130
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b0016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b0017

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1137
    :pswitch_2
    # getter for: Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001a

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1138
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b001b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1145
    :pswitch_3
    # getter for: Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$4700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001c

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1146
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b001e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b001f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private colorForNickname(Ljava/lang/String;Z)I
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "isGroupChat"    # Z

    .prologue
    .line 1385
    const/high16 v4, -0x1000000

    .line 1386
    .local v4, "retval":I
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1387
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    if-nez v5, :cond_0

    .line 1389
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    # setter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5, v6}, Lcom/google/android/talk/ChatView;->access$5802(Lcom/google/android/talk/ChatView;[I)[I

    .line 1393
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5900(Lcom/google/android/talk/ChatView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1394
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5900(Lcom/google/android/talk/ChatView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1423
    :cond_1
    :goto_0
    return v4

    .line 1401
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v6

    array-length v6, v6

    rem-int v3, v5, v6

    .line 1402
    .local v3, "pos":I
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    array-length v1, v5

    .line 1403
    .local v1, "count":I
    const/high16 v0, -0x1000000

    .local v0, "color":I
    move v2, v1

    .line 1409
    .end local v1    # "count":I
    .local v2, "count":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    if-lez v2, :cond_3

    .line 1410
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v3, v5

    .line 1411
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    aget v0, v5, v3

    .line 1412
    if-eqz v0, :cond_4

    .line 1413
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChatColors:[I
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    const/4 v6, 0x0

    aput v6, v5, v3

    .line 1419
    :cond_3
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mColorMapping:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$5900(Lcom/google/android/talk/ChatView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    move v4, v0

    goto :goto_0

    .line 1416
    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 1389
    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method private convertToSpannableString(Ljava/lang/CharSequence;Z)Landroid/text/SpannableString;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "markup"    # Z

    .prologue
    .line 1666
    if-eqz p2, :cond_0

    .line 1667
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMarkup:Lcom/google/android/talk/util/Markup;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/util/Markup;->markup(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 1676
    .local v0, "spanText":Landroid/text/SpannableString;
    :goto_0
    return-object v0

    .line 1669
    .end local v0    # "spanText":Landroid/text/SpannableString;
    :cond_0
    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1670
    check-cast v0, Landroid/text/SpannableString;

    .restart local v0    # "spanText":Landroid/text/SpannableString;
    goto :goto_0

    .line 1672
    .end local v0    # "spanText":Landroid/text/SpannableString;
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v0    # "spanText":Landroid/text/SpannableString;
    goto :goto_0
.end method

.method private inflatePictureView(I)Landroid/view/View;
    .locals 11

    .prologue
    const v10, 0x7f100041

    const/4 v7, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1688
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1689
    invoke-virtual {p0, v6}, Lcom/google/android/talk/ChatView$MessageItem;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 1690
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflatePictureView looking for tag: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " this: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1693
    :cond_0
    if-eqz v4, :cond_2

    .line 1694
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflatePictureView found view with tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pictureView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1698
    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    :goto_0
    return-object v4

    .line 1706
    :cond_2
    invoke-virtual {p0, v10}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1707
    if-nez v0, :cond_3

    .line 1708
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linearLayoutRoot is NULL, can\'t find message_block, tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-virtual {p0, v3}, Lcom/google/android/talk/ChatView$MessageItem;->debug(I)V

    .line 1711
    const/4 v4, 0x0

    goto :goto_0

    .line 1713
    :cond_3
    const-string v1, "wrapperView"

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1714
    if-nez v1, :cond_5

    .line 1715
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$MessageItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1716
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1717
    const-string v5, "wrapperView"

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1718
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1721
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1722
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflatePictureView linearLayoutRoot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " wrapperView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " params: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1725
    :cond_4
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1726
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setId(I)V

    .line 1729
    :cond_5
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$4700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f04002a

    invoke-virtual {v0, v5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1732
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    move v5, v3

    .line 1734
    :goto_1
    if-ge v5, v7, :cond_8

    .line 1735
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1736
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f100068

    if-ne v8, v9, :cond_7

    .line 1737
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_7

    .line 1740
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    move v0, v2

    .line 1746
    :goto_2
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1747
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflatePictureView had to inflate view. found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " CREATED tag: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " getTag: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " pictureView: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " parent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " dump: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1752
    :cond_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v4, v1

    .line 1754
    goto/16 :goto_0

    .line 1734
    :cond_7
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_8
    move v0, v3

    move-object v1, v4

    goto :goto_2
.end method

.method private removeAllPictureViews()V
    .locals 4

    .prologue
    .line 1763
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1764
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/talk/ChatView$MessageItem;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1765
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f100068

    if-ne v2, v3, :cond_0

    .line 1766
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1768
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1770
    :cond_1
    return-void
.end method

.method private setPicture(Lcom/google/android/talk/PictureCache$PictureData;Landroid/widget/ImageView;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1799
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPicture pictureData: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " desc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1805
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1806
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1808
    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1809
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1811
    const v1, 0x7f100069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1812
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1814
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1817
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 1818
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 1819
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 1820
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1821
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1823
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1824
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1825
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1829
    if-eqz v1, :cond_1

    .line 1830
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1833
    :cond_1
    if-eqz v1, :cond_2

    .line 1834
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1837
    :cond_2
    const v1, 0x7f10006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1838
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1842
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getType()I

    move-result v1

    .line 1843
    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 1844
    const v2, 0x7f02003b

    .line 1850
    :cond_3
    :goto_1
    const v1, 0x7f10006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1851
    if-eqz v2, :cond_7

    .line 1852
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1856
    :goto_2
    return-void

    :cond_4
    move v1, v2

    .line 1818
    goto :goto_0

    .line 1845
    :cond_5
    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 1846
    const v2, 0x7f0200b3

    goto :goto_1

    .line 1847
    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1848
    const v2, 0x7f0200cd

    goto :goto_1

    .line 1854
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private showPictures(Ljava/lang/CharSequence;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1773
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$MessageItem;->getMessageLinks()[Landroid/text/style/URLSpan;

    move-result-object v7

    .line 1775
    array-length v8, v7

    move v6, v2

    .line 1776
    :goto_0
    if-ge v6, v8, :cond_1

    .line 1777
    aget-object v0, v7, v6

    .line 1778
    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 1780
    invoke-static {v1}, Lcom/google/android/talk/PictureCache;->allowScraping(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mPictureCache:Lcom/google/android/talk/PictureCache;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$6100(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/PictureCache;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$6000(Lcom/google/android/talk/ChatView;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/PictureCache;->getPictureDataIfInCache(Ljava/lang/String;IILandroid/os/Handler;Lcom/google/android/talk/PictureCache$PictureData;)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v1

    .line 1788
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPictures pictureData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1790
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1791
    invoke-direct {p0, v6}, Lcom/google/android/talk/ChatView$MessageItem;->inflatePictureView(I)Landroid/view/View;

    move-result-object v0

    .line 1792
    const v3, 0x7f10006a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/google/android/talk/ChatView$MessageItem;->setPicture(Lcom/google/android/talk/PictureCache$PictureData;Landroid/widget/ImageView;)V

    .line 1776
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1796
    :cond_1
    return-void
.end method


# virtual methods
.method appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V
    .locals 3
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "timeStamp"    # J
    .param p4, "linkify"    # Z

    .prologue
    .line 1651
    if-eqz p4, :cond_0

    .line 1652
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1655
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/talk/ChatView$MessageItem;->convertToSpannableString(Ljava/lang/CharSequence;Z)Landroid/text/SpannableString;

    move-result-object v0

    .line 1656
    .local v0, "spanText":Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1658
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1

    .line 1659
    invoke-virtual {p0, p2, p3}, Lcom/google/android/talk/ChatView$MessageItem;->setTimeStamp(J)V

    .line 1661
    :cond_1
    return-void
.end method

.method public appendGroupChatConversionMessage(J)V
    .locals 7
    .param p1, "date"    # J

    .prologue
    const/4 v6, 0x0

    .line 1488
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1490
    .local v0, "body":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1491
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1492
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1494
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1496
    .local v1, "len":I
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v6, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1499
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1500
    return-void
.end method

.method appendInboxMessage(Ljava/lang/String;Ljava/lang/String;JZLandroid/database/Cursor;)V
    .locals 12
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "showTimeStamp"    # Z
    .param p6, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1428
    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageItem;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1429
    .local v10, "buf":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1430
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1433
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1434
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1436
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->isGroupChat()Z

    move-result v11

    .line 1437
    .local v11, "isGroupChat":Z
    const/4 v5, 0x0

    .line 1438
    .local v5, "nick":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0036

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1441
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1, v11}, Lcom/google/android/talk/ChatView$MessageItem;->colorForNickname(Ljava/lang/String;Z)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v2, p3

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/talk/ChatView$MessageItem;->appendMessage(Landroid/text/SpannableStringBuilder;JZLjava/lang/String;IZZZ)V

    .line 1444
    return-void
.end method

.method appendMessage(Landroid/text/SpannableStringBuilder;JZLjava/lang/String;IZZZ)V
    .locals 5
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "timeStamp"    # J
    .param p4, "showTimeStamp"    # Z
    .param p5, "contact"    # Ljava/lang/String;
    .param p6, "textColor"    # I
    .param p7, "linkify"    # Z
    .param p8, "markup"    # Z
    .param p9, "isSending"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1629
    if-eqz p7, :cond_0

    .line 1630
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1633
    :cond_0
    if-eqz p5, :cond_1

    .line 1634
    invoke-virtual {p1, v4, p5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1635
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x7f7f80

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1636
    .local v0, "mTextColor":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v4, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1639
    .end local v0    # "mTextColor":Landroid/text/style/ForegroundColorSpan;
    :cond_1
    if-eqz p9, :cond_3

    .line 1640
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1644
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p8}, Lcom/google/android/talk/ChatView$MessageItem;->convertToSpannableString(Ljava/lang/CharSequence;Z)Landroid/text/SpannableString;

    move-result-object v1

    .line 1646
    .local v1, "spanText":Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1647
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView$MessageItem;->showPictures(Ljava/lang/CharSequence;)V

    .line 1648
    return-void

    .line 1641
    .end local v1    # "spanText":Landroid/text/SpannableString;
    :cond_3
    if-eqz p4, :cond_2

    .line 1642
    invoke-virtual {p0, p2, p3}, Lcom/google/android/talk/ChatView$MessageItem;->setTimeStamp(J)V

    goto :goto_0
.end method

.method public appendOffTheRecordStatus(Ljava/lang/String;)V
    .locals 7
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 1583
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1584
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1585
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1587
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1589
    .local v0, "len":I
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1592
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1595
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1599
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1600
    return-void
.end method

.method public appendPresenceUpdates(Ljava/lang/String;IJ)V
    .locals 10
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "date"    # J

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x0

    .line 1505
    packed-switch p2, :pswitch_data_0

    .line 1519
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChat:Z
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0c003d

    :goto_0
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1523
    .local v0, "body":Ljava/lang/CharSequence;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1525
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 1526
    .local v1, "formatter":Ljava/util/Formatter;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-virtual {v1, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1528
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1530
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1531
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1532
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1534
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1536
    .local v2, "len":I
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v5, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1539
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v5, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1542
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f4ccccd    # 0.8f

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4, v5, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1546
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v4, p3, p4, v8}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1547
    return-void

    .line 1507
    .end local v0    # "body":Ljava/lang/CharSequence;
    .end local v1    # "formatter":Ljava/util/Formatter;
    .end local v2    # "len":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChat:Z
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0c003c

    :goto_2
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1508
    .restart local v0    # "body":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1507
    .end local v0    # "body":Ljava/lang/CharSequence;
    :cond_0
    const v4, 0x7f0c003e

    goto :goto_2

    .line 1511
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1512
    .restart local v0    # "body":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1515
    .end local v0    # "body":Ljava/lang/CharSequence;
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1516
    .restart local v0    # "body":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1519
    .end local v0    # "body":Ljava/lang/CharSequence;
    :cond_1
    const v4, 0x7f0c0041

    goto/16 :goto_0

    .line 1505
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method appendSentMessage(Ljava/lang/String;JZIZ)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "showTimeStamp"    # Z
    .param p5, "errorCode"    # I
    .param p6, "isSending"    # Z

    .prologue
    .line 1448
    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageItem;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1449
    .local v10, "buf":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1450
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    .line 1451
    .local v13, "namePortionLength":I
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    const/4 v11, 0x0

    .line 1456
    .local v11, "errorOffset":I
    if-lez p5, :cond_0

    .line 1457
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 1458
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1463
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1464
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1466
    if-lez p5, :cond_1

    .line 1467
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 1469
    .local v12, "length":I
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1472
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1476
    if-lez v11, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v11, v12, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1483
    .end local v12    # "length":I
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/talk/ChatView$MessageItem;->appendMessage(Landroid/text/SpannableStringBuilder;JZLjava/lang/String;IZZZ)V

    .line 1485
    return-void
.end method

.method public appendStatusMessage(Ljava/lang/String;J)V
    .locals 7
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 1550
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1551
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1552
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1554
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1556
    .local v0, "len":I
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1559
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1562
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1566
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1567
    return-void
.end method

.method public appendUserStatusMessage(Ljava/lang/String;JZ)V
    .locals 7
    .param p1, "statusMessage"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "showTimeStamp"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1572
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1573
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1575
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mNickName:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$800(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1578
    .local v0, "formattedMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1579
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_0

    .end local p2    # "date":J
    :goto_0
    invoke-virtual {p0, v1, p2, p3, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1580
    return-void

    .line 1579
    .restart local p2    # "date":J
    :cond_0
    const-wide/16 p2, 0x0

    goto :goto_0
.end method

.method public bind(Landroid/database/Cursor;)V
    .locals 21
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mDateColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2700(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1261
    .local v5, "date":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mTypeColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2800(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1262
    .local v20, "type":I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mIsFirstItemInList:Z

    .line 1263
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_5

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mIsLastItemInList:Z

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mBodyColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/talk/ChatView$MessageItem;->mBody:Ljava/lang/String;

    .line 1271
    .local v4, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChat:Z
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mNicknameColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2500(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1273
    .local v19, "nickname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object/from16 v0, v19

    # invokes: Lcom/google/android/talk/ChatView;->getGroupchatShortname(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/google/android/talk/ChatView;->access$5000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1278
    .local v3, "displayNickname":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mDisplaySentTimeColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2900(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1279
    .local v15, "alwaysDisplayTs":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mDeltaColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$3100(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1280
    .local v16, "delta":J
    const/4 v2, 0x1

    if-eq v15, v2, :cond_0

    const-wide/32 v8, 0xea60

    cmp-long v2, v16, v8

    if-lez v2, :cond_7

    :cond_0
    const/4 v7, 0x1

    .line 1281
    .local v7, "showTimeStamp":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mSendStatusColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$3200(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    const/4 v14, 0x1

    .line 1286
    .local v14, "isSending":Z
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_2

    .line 1287
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delta = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", showTs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/google/android/talk/ChatView;->logv(Ljava/lang/String;)V
    invoke-static {v2, v8}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1290
    :cond_1
    if-nez v7, :cond_9

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    const-wide/32 v8, 0xea60

    # invokes: Lcom/google/android/talk/ChatView;->scheduleRequery(J)V
    invoke-static {v2, v8, v9}, Lcom/google/android/talk/ChatView;->access$5100(Lcom/google/android/talk/ChatView;J)V

    .line 1300
    :cond_2
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/ChatView$MessageItem;->removeAllPictureViews()V

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    if-eqz v2, :cond_3

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v2}, Lcom/google/android/talk/Divot;->asImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1305
    :cond_3
    packed-switch v20, :pswitch_data_0

    .line 1366
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1, v5, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendPresenceUpdates(Ljava/lang/String;IJ)V

    .line 1370
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mIsLastItemInList:Z

    if-eqz v2, :cond_d

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1378
    :goto_7
    return-void

    .line 1262
    .end local v3    # "displayNickname":Ljava/lang/String;
    .end local v4    # "body":Ljava/lang/String;
    .end local v7    # "showTimeStamp":Z
    .end local v14    # "isSending":Z
    .end local v15    # "alwaysDisplayTs":I
    .end local v16    # "delta":J
    .end local v19    # "nickname":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1263
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1275
    .restart local v4    # "body":Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    .line 1276
    .restart local v19    # "nickname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "displayNickname":Ljava/lang/String;
    goto/16 :goto_2

    .line 1280
    .restart local v15    # "alwaysDisplayTs":I
    .restart local v16    # "delta":J
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1281
    .restart local v7    # "showTimeStamp":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1293
    .restart local v14    # "isSending":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # invokes: Lcom/google/android/talk/ChatView;->cancelRequery()V
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$5200(Lcom/google/android/talk/ChatView;)V

    goto :goto_5

    :pswitch_1
    move-object/from16 v2, p0

    move-object/from16 v8, p1

    .line 1307
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/talk/ChatView$MessageItem;->appendInboxMessage(Ljava/lang/String;Ljava/lang/String;JZLandroid/database/Cursor;)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChat:Z
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object/from16 v0, v19

    # invokes: Lcom/google/android/talk/ChatView;->fixGroupchatNickname(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/google/android/talk/ChatView;->access$5300(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1311
    .local v18, "emailAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChatAvatarCache:Lcom/google/android/talk/ChatView$AvatarCache;
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$5400(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$AvatarCache;

    move-result-object v8

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v8, v0, v1}, Lcom/google/android/talk/ChatView$AvatarCache;->getAvatar(Ljava/lang/String;Lcom/google/android/talk/ChatView$MessageItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    # setter for: Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v8}, Lcom/google/android/talk/ChatView;->access$2002(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1317
    .end local v18    # "emailAddress":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2000(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v2}, Lcom/google/android/talk/Divot;->asImageView()Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$2000(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1322
    :goto_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mGroupChat:Z
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    :goto_a
    invoke-interface {v8, v2}, Lcom/google/android/talk/Divot;->assignContactFromEmail(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1313
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2000(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    goto :goto_8

    .line 1320
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v2}, Lcom/google/android/talk/Divot;->asImageView()Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$5500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/TalkApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 1322
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 1326
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mErrorCodeColumn:I
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$3000(Lcom/google/android/talk/ChatView;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .local v13, "errorCode":I
    move-object/from16 v8, p0

    move-object v9, v4

    move-wide v10, v5

    move v12, v7

    .line 1327
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/talk/ChatView$MessageItem;->appendSentMessage(Ljava/lang/String;JZIZ)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v2}, Lcom/google/android/talk/Divot;->asImageView()Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mSelfAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$5600(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mSelfUsername:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$5700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/google/android/talk/Divot;->assignContactFromEmail(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1334
    .end local v13    # "errorCode":I
    :pswitch_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendGroupChatConversionMessage(J)V

    goto/16 :goto_6

    .line 1337
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c0049

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1340
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c004a

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1343
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c004b

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1347
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c004c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1351
    :pswitch_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendStatusMessage(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 1354
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c0043

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6, v8}, Lcom/google/android/talk/ChatView$MessageItem;->appendUserStatusMessage(Ljava/lang/String;JZ)V

    goto/16 :goto_6

    .line 1358
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0c0042

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6, v8}, Lcom/google/android/talk/ChatView$MessageItem;->appendUserStatusMessage(Ljava/lang/String;JZ)V

    goto/16 :goto_6

    .line 1363
    :pswitch_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendStatusMessage(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 1376
    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_e

    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_e
    const/4 v2, 0x0

    goto :goto_b

    .line 1305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x4

    const/high16 v11, 0x3f800000    # 1.0f

    .line 1184
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageBlock:Landroid/view/View;

    .line 1185
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 1186
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v1

    .line 1187
    .local v1, "l":F
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v6

    .line 1188
    .local v6, "t":F
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float v3, v0, v2

    .line 1189
    .local v3, "r":F
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v4, v0, v2

    .line 1194
    .local v4, "b":F
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->mPaint:Landroid/graphics/Paint;

    .line 1195
    .local v5, "paint":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1196
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1197
    add-float v2, v6, v11

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1199
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1201
    sub-float/2addr v3, v11

    .line 1212
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mIsLastItemInList:Z

    if-eqz v0, :cond_0

    .line 1213
    sub-float/2addr v4, v11

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v0}, Lcom/google/android/talk/Divot;->getPosition()I

    move-result v0

    if-eq v0, v10, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v0}, Lcom/google/android/talk/Divot;->getPosition()I

    move-result v0

    if-ne v0, v12, :cond_2

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v0}, Lcom/google/android/talk/Divot;->getPosition()I

    move-result v0

    if-ne v0, v10, :cond_3

    move v8, v1

    .line 1219
    .local v8, "x1":F
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v0}, Lcom/google/android/talk/Divot;->getPosition()I

    move-result v0

    if-ne v0, v10, :cond_4

    move v9, v3

    .line 1221
    .local v9, "x2":F
    :goto_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/4 v2, 0x0

    aput v8, v0, v2

    .line 1222
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v2}, Lcom/google/android/talk/Divot;->getCloseOffset()F

    move-result v2

    add-float/2addr v2, v6

    aput v2, v0, v12

    .line 1223
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/4 v2, 0x2

    aput v8, v0, v2

    .line 1224
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/4 v2, 0x3

    aput v6, v0, v2

    .line 1226
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    aput v8, v0, v10

    .line 1227
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/4 v2, 0x5

    aput v6, v0, v2

    .line 1228
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/4 v2, 0x6

    aput v9, v0, v2

    .line 1229
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/4 v2, 0x7

    aput v6, v0, v2

    .line 1231
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0x8

    aput v9, v0, v2

    .line 1232
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0x9

    aput v6, v0, v2

    .line 1233
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0xa

    aput v9, v0, v2

    .line 1234
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0xb

    aput v4, v0, v2

    .line 1236
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0xc

    aput v9, v0, v2

    .line 1237
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0xd

    aput v4, v0, v2

    .line 1238
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0xe

    aput v8, v0, v2

    .line 1239
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0xf

    aput v4, v0, v2

    .line 1241
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0x10

    aput v8, v0, v2

    .line 1242
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0x11

    aput v4, v0, v2

    .line 1243
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0x12

    aput v8, v0, v2

    .line 1244
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    const/16 v2, 0x13

    iget-object v10, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Lcom/google/android/talk/Divot;

    invoke-interface {v10}, Lcom/google/android/talk/Divot;->getFarOffset()F

    move-result v10

    add-float/2addr v10, v6

    aput v10, v0, v2

    .line 1246
    const v0, -0x333334

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1247
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1248
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1249
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mLinePoints:[F

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 1254
    .end local v1    # "l":F
    .end local v3    # "r":F
    .end local v4    # "b":F
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "t":F
    .end local v8    # "x1":F
    .end local v9    # "x2":F
    :cond_2
    :goto_2
    return-void

    .restart local v1    # "l":F
    .restart local v3    # "r":F
    .restart local v4    # "b":F
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "t":F
    :cond_3
    move v8, v3

    .line 1218
    goto/16 :goto_0

    .restart local v8    # "x1":F
    :cond_4
    move v9, v1

    .line 1219
    goto/16 :goto_1

    .line 1252
    .end local v1    # "l":F
    .end local v3    # "r":F
    .end local v4    # "b":F
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "t":F
    .end local v8    # "x1":F
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method final getMessageLinks()[Landroid/text/style/URLSpan;
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    return-object v0
.end method

.method setTimeStamp(J)V
    .locals 11
    .param p1, "timeStamp"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1603
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1604
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 1606
    .local v3, "now":Ljava/util/Date;
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1607
    .local v6, "timeStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormatStr:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1609
    .local v1, "dateStr":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v10

    if-ne v9, v10, :cond_0

    move v4, v7

    .line 1614
    .local v4, "sameDay":Z
    :goto_0
    if-eqz v4, :cond_1

    const v2, 0x7f0c0046

    .line 1617
    .local v2, "format":I
    :goto_1
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mResources:Landroid/content/res/Resources;
    invoke-static {v9}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v8

    aput-object v1, v10, v7

    invoke-virtual {v9, v2, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1618
    .local v5, "timeStampStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1619
    return-void

    .end local v2    # "format":I
    .end local v4    # "sameDay":Z
    .end local v5    # "timeStampStr":Ljava/lang/String;
    :cond_0
    move v4, v8

    .line 1609
    goto :goto_0

    .line 1614
    .restart local v4    # "sameDay":Z
    :cond_1
    const v2, 0x7f0c0045

    goto :goto_1
.end method
