.class public final Llbx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llbx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1040
    iput-object v0, p0, Llbx;->a:Ljava/lang/Integer;

    .line 1041
    iput-object v0, p0, Llbx;->b:Ljava/lang/String;

    .line 1042
    iput-object v0, p0, Llbx;->eD:Llyd;

    .line 1043
    const/4 v0, -0x1

    iput v0, p0, Llbx;->eE:I

    .line 37
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1078
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1079
    sparse-switch v0, :sswitch_data_0

    .line 1083
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    :sswitch_0
    return-object p0

    .line 1089
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1090
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1556
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llbx;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1562
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llbx;->b:Ljava/lang/String;

    goto :goto_0

    .line 1079
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 1090
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1111 -> :sswitch_2
        0x1112 -> :sswitch_2
        0x1113 -> :sswitch_2
        0x1114 -> :sswitch_2
        0x1115 -> :sswitch_2
        0x1116 -> :sswitch_2
        0x1117 -> :sswitch_2
        0x1118 -> :sswitch_2
        0x1119 -> :sswitch_2
        0x111a -> :sswitch_2
        0x111b -> :sswitch_2
        0x1120 -> :sswitch_2
        0x1121 -> :sswitch_2
        0x1122 -> :sswitch_2
        0x1123 -> :sswitch_2
        0x1124 -> :sswitch_2
        0x1125 -> :sswitch_2
        0x1126 -> :sswitch_2
        0x1127 -> :sswitch_2
        0x1128 -> :sswitch_2
        0x1129 -> :sswitch_2
        0x1130 -> :sswitch_2
        0x1131 -> :sswitch_2
        0x1132 -> :sswitch_2
        0x1133 -> :sswitch_2
        0x1134 -> :sswitch_2
        0x1135 -> :sswitch_2
        0x1136 -> :sswitch_2
        0x1137 -> :sswitch_2
        0x1138 -> :sswitch_2
        0x1139 -> :sswitch_2
        0x113a -> :sswitch_2
        0x113b -> :sswitch_2
        0x1140 -> :sswitch_2
        0x1141 -> :sswitch_2
        0x1142 -> :sswitch_2
        0x1143 -> :sswitch_2
        0x1144 -> :sswitch_2
        0x1145 -> :sswitch_2
        0x1146 -> :sswitch_2
        0x1147 -> :sswitch_2
        0x1148 -> :sswitch_2
        0x1149 -> :sswitch_2
        0x114a -> :sswitch_2
        0x114b -> :sswitch_2
        0x114c -> :sswitch_2
        0x114d -> :sswitch_2
        0x114e -> :sswitch_2
        0x114f -> :sswitch_2
        0x1150 -> :sswitch_2
        0x1151 -> :sswitch_2
        0x1152 -> :sswitch_2
        0x1153 -> :sswitch_2
        0x1154 -> :sswitch_2
        0x1155 -> :sswitch_2
        0x1156 -> :sswitch_2
        0x1157 -> :sswitch_2
        0x1158 -> :sswitch_2
        0x1159 -> :sswitch_2
        0x115a -> :sswitch_2
        0x115b -> :sswitch_2
        0x115c -> :sswitch_2
        0x115d -> :sswitch_2
        0x115e -> :sswitch_2
        0x115f -> :sswitch_2
        0x1160 -> :sswitch_2
        0x1161 -> :sswitch_2
        0x1162 -> :sswitch_2
        0x1163 -> :sswitch_2
        0x1164 -> :sswitch_2
        0x1165 -> :sswitch_2
        0x1166 -> :sswitch_2
        0x1167 -> :sswitch_2
        0x1168 -> :sswitch_2
        0x1169 -> :sswitch_2
        0x116a -> :sswitch_2
        0x116b -> :sswitch_2
        0x116c -> :sswitch_2
        0x116d -> :sswitch_2
        0x116e -> :sswitch_2
        0x116f -> :sswitch_2
        0x1170 -> :sswitch_2
        0x1171 -> :sswitch_2
        0x1172 -> :sswitch_2
        0x1173 -> :sswitch_2
        0x1174 -> :sswitch_2
        0x1175 -> :sswitch_2
        0x1176 -> :sswitch_2
        0x1177 -> :sswitch_2
        0x1178 -> :sswitch_2
        0x1179 -> :sswitch_2
        0x117a -> :sswitch_2
        0x117b -> :sswitch_2
        0x117c -> :sswitch_2
        0x117d -> :sswitch_2
        0x117e -> :sswitch_2
        0x117f -> :sswitch_2
        0x1180 -> :sswitch_2
        0x1181 -> :sswitch_2
        0x1182 -> :sswitch_2
        0x1183 -> :sswitch_2
        0x1184 -> :sswitch_2
        0x1185 -> :sswitch_2
        0x1186 -> :sswitch_2
        0x1187 -> :sswitch_2
        0x1188 -> :sswitch_2
        0x1189 -> :sswitch_2
        0x118a -> :sswitch_2
        0x118b -> :sswitch_2
        0x118c -> :sswitch_2
        0x118d -> :sswitch_2
        0x118e -> :sswitch_2
        0x118f -> :sswitch_2
        0x1190 -> :sswitch_2
        0x1191 -> :sswitch_2
        0x1192 -> :sswitch_2
        0x1193 -> :sswitch_2
        0x1194 -> :sswitch_2
        0x1195 -> :sswitch_2
        0x1196 -> :sswitch_2
        0x1197 -> :sswitch_2
        0x1198 -> :sswitch_2
        0x1199 -> :sswitch_2
        0x119a -> :sswitch_2
        0x119b -> :sswitch_2
        0x119c -> :sswitch_2
        0x119d -> :sswitch_2
        0x119e -> :sswitch_2
        0x119f -> :sswitch_2
        0x11a0 -> :sswitch_2
        0x11a1 -> :sswitch_2
        0x11a2 -> :sswitch_2
        0x11a3 -> :sswitch_2
        0x11a4 -> :sswitch_2
        0x11a5 -> :sswitch_2
        0x11a6 -> :sswitch_2
        0x11a7 -> :sswitch_2
        0x11a8 -> :sswitch_2
        0x11a9 -> :sswitch_2
        0x11aa -> :sswitch_2
        0x11ab -> :sswitch_2
        0x11ac -> :sswitch_2
        0x11ad -> :sswitch_2
        0x11ae -> :sswitch_2
        0x11af -> :sswitch_2
        0x11b0 -> :sswitch_2
        0x11b1 -> :sswitch_2
        0x11b2 -> :sswitch_2
        0x11b3 -> :sswitch_2
        0x11b4 -> :sswitch_2
        0x11b5 -> :sswitch_2
        0x11b6 -> :sswitch_2
        0x11b7 -> :sswitch_2
        0x11b8 -> :sswitch_2
        0x11b9 -> :sswitch_2
        0x11ba -> :sswitch_2
        0x11bb -> :sswitch_2
        0x11bc -> :sswitch_2
        0x11bd -> :sswitch_2
        0x11be -> :sswitch_2
        0x11bf -> :sswitch_2
        0x11c0 -> :sswitch_2
        0x11c1 -> :sswitch_2
        0x11c2 -> :sswitch_2
        0x11c3 -> :sswitch_2
        0x11c4 -> :sswitch_2
        0x11c5 -> :sswitch_2
        0x11c6 -> :sswitch_2
        0x11c7 -> :sswitch_2
        0x11c8 -> :sswitch_2
        0x11c9 -> :sswitch_2
        0x11ca -> :sswitch_2
        0x11cb -> :sswitch_2
        0x11cc -> :sswitch_2
        0x11cd -> :sswitch_2
        0x11ce -> :sswitch_2
        0x11cf -> :sswitch_2
        0x11d0 -> :sswitch_2
        0x11d1 -> :sswitch_2
        0x11d2 -> :sswitch_2
        0x11d3 -> :sswitch_2
        0x11d4 -> :sswitch_2
        0x11d5 -> :sswitch_2
        0x11d6 -> :sswitch_2
        0x11d7 -> :sswitch_2
        0x11d8 -> :sswitch_2
        0x11d9 -> :sswitch_2
        0x11da -> :sswitch_2
        0x11db -> :sswitch_2
        0x11dc -> :sswitch_2
        0x11dd -> :sswitch_2
        0x11de -> :sswitch_2
        0x11df -> :sswitch_2
        0x11e0 -> :sswitch_2
        0x11e1 -> :sswitch_2
        0x11e2 -> :sswitch_2
        0x11e3 -> :sswitch_2
        0x11e4 -> :sswitch_2
        0x11e5 -> :sswitch_2
        0x11e6 -> :sswitch_2
        0x11e7 -> :sswitch_2
        0x11e8 -> :sswitch_2
        0x11e9 -> :sswitch_2
        0x11ea -> :sswitch_2
        0x11eb -> :sswitch_2
        0x11ec -> :sswitch_2
        0x11ed -> :sswitch_2
        0x11ee -> :sswitch_2
        0x11ef -> :sswitch_2
        0x11f0 -> :sswitch_2
        0x11f1 -> :sswitch_2
        0x11f2 -> :sswitch_2
        0x11f3 -> :sswitch_2
        0x11f4 -> :sswitch_2
        0x11f5 -> :sswitch_2
        0x11f6 -> :sswitch_2
        0x11f7 -> :sswitch_2
        0x11f8 -> :sswitch_2
        0x11f9 -> :sswitch_2
        0x11fa -> :sswitch_2
        0x11fb -> :sswitch_2
        0x11fc -> :sswitch_2
        0x11fd -> :sswitch_2
        0x11fe -> :sswitch_2
        0x11ff -> :sswitch_2
        0x1200 -> :sswitch_2
        0x1201 -> :sswitch_2
        0x1202 -> :sswitch_2
        0x1203 -> :sswitch_2
        0x11131 -> :sswitch_2
        0x11132 -> :sswitch_2
        0x11133 -> :sswitch_2
        0x11134 -> :sswitch_2
        0x11135 -> :sswitch_2
        0x11171 -> :sswitch_2
        0x11172 -> :sswitch_2
        0x11173 -> :sswitch_2
        0x11174 -> :sswitch_2
        0x11175 -> :sswitch_2
        0x11176 -> :sswitch_2
        0x11177 -> :sswitch_2
        0x11178 -> :sswitch_2
        0x11179 -> :sswitch_2
        0x1117a -> :sswitch_2
        0x1117b -> :sswitch_2
        0x1117c -> :sswitch_2
        0x1117d -> :sswitch_2
        0x1117e -> :sswitch_2
        0x11231 -> :sswitch_2
        0x11232 -> :sswitch_2
        0x11233 -> :sswitch_2
        0x11234 -> :sswitch_2
        0x11235 -> :sswitch_2
        0x11236 -> :sswitch_2
        0x11237 -> :sswitch_2
        0x11238 -> :sswitch_2
        0x115c1 -> :sswitch_2
        0x11611 -> :sswitch_2
        0x116d1 -> :sswitch_2
        0x11701 -> :sswitch_2
        0x11791 -> :sswitch_2
        0x11792 -> :sswitch_2
        0x11793 -> :sswitch_2
        0x117a1 -> :sswitch_2
        0x117a2 -> :sswitch_2
        0x117b1 -> :sswitch_2
        0x117b2 -> :sswitch_2
        0x117b3 -> :sswitch_2
        0x117e1 -> :sswitch_2
        0x11811 -> :sswitch_2
        0x11812 -> :sswitch_2
        0x11813 -> :sswitch_2
        0x11814 -> :sswitch_2
        0x11815 -> :sswitch_2
        0x11816 -> :sswitch_2
        0x11817 -> :sswitch_2
        0x11818 -> :sswitch_2
        0x11819 -> :sswitch_2
        0x1181a -> :sswitch_2
        0x1181b -> :sswitch_2
        0x1181c -> :sswitch_2
        0x1181d -> :sswitch_2
        0x1181e -> :sswitch_2
        0x118d1 -> :sswitch_2
        0x118d2 -> :sswitch_2
        0x11921 -> :sswitch_2
        0x11922 -> :sswitch_2
        0x119c1 -> :sswitch_2
        0x11a21 -> :sswitch_2
        0x11ad1 -> :sswitch_2
        0x11ad2 -> :sswitch_2
        0x11ad3 -> :sswitch_2
        0x11ae1 -> :sswitch_2
        0x11b21 -> :sswitch_2
        0x11b22 -> :sswitch_2
        0x11b31 -> :sswitch_2
        0x11b41 -> :sswitch_2
        0x11b42 -> :sswitch_2
        0x11b43 -> :sswitch_2
        0x11b91 -> :sswitch_2
        0x11c51 -> :sswitch_2
        0x11df1 -> :sswitch_2
        0x11e01 -> :sswitch_2
        0x11e02 -> :sswitch_2
        0x11e03 -> :sswitch_2
        0x11e04 -> :sswitch_2
        0x11e61 -> :sswitch_2
        0x11e81 -> :sswitch_2
        0x11f81 -> :sswitch_2
        0x12011 -> :sswitch_2
        0x12031 -> :sswitch_2
        0x1117e1 -> :sswitch_2
        0x1117f1 -> :sswitch_2
        0x1117f2 -> :sswitch_2
        0x1117f3 -> :sswitch_2
        0x1117f4 -> :sswitch_2
        0x1117f5 -> :sswitch_2
        0x1117f6 -> :sswitch_2
        0x1117f7 -> :sswitch_2
        0x1117f8 -> :sswitch_2
        0x1117f9 -> :sswitch_2
        0x1117fa -> :sswitch_2
        0x1117fb -> :sswitch_2
        0x1117fc -> :sswitch_2
        0x1117fd -> :sswitch_2
        0x1117fe -> :sswitch_2
        0x112331 -> :sswitch_2
        0x112332 -> :sswitch_2
        0x112341 -> :sswitch_2
        0x118111 -> :sswitch_2
        0x118112 -> :sswitch_2
        0x118113 -> :sswitch_2
        0x118114 -> :sswitch_2
        0x118115 -> :sswitch_2
        0x118116 -> :sswitch_2
        0x118117 -> :sswitch_2
        0x118118 -> :sswitch_2
        0x118119 -> :sswitch_2
        0x11811a -> :sswitch_2
        0x11811b -> :sswitch_2
        0x11811c -> :sswitch_2
        0x11811d -> :sswitch_2
        0x118121 -> :sswitch_2
        0x118131 -> :sswitch_2
        0x118141 -> :sswitch_2
        0x118142 -> :sswitch_2
        0x118143 -> :sswitch_2
        0x118151 -> :sswitch_2
        0x118161 -> :sswitch_2
        0x118162 -> :sswitch_2
        0x118171 -> :sswitch_2
        0x118172 -> :sswitch_2
        0x118173 -> :sswitch_2
        0x118174 -> :sswitch_2
        0x118175 -> :sswitch_2
        0x118176 -> :sswitch_2
        0x118181 -> :sswitch_2
        0x118191 -> :sswitch_2
        0x1181a1 -> :sswitch_2
        0x1181b1 -> :sswitch_2
        0x1181c1 -> :sswitch_2
        0x1181c2 -> :sswitch_2
        0x1181c3 -> :sswitch_2
        0x1181c4 -> :sswitch_2
        0x1181c5 -> :sswitch_2
        0x1181c6 -> :sswitch_2
        0x1181d1 -> :sswitch_2
        0x1181e1 -> :sswitch_2
        0x1181f1 -> :sswitch_2
        0x1181f2 -> :sswitch_2
        0x1181f3 -> :sswitch_2
        0x1117f71 -> :sswitch_2
        0x1117ff1 -> :sswitch_2
        0x1117ff2 -> :sswitch_2
        0x1117ff3 -> :sswitch_2
        0x1117ff4 -> :sswitch_2
        0x1117ff5 -> :sswitch_2
        0x1117ff6 -> :sswitch_2
        0x1117ff7 -> :sswitch_2
        0x1117ff8 -> :sswitch_2
        0x1117ff9 -> :sswitch_2
        0x1117ffa -> :sswitch_2
        0x1117ffb -> :sswitch_2
        0x1117ffc -> :sswitch_2
        0x1117ffd -> :sswitch_2
        0x1117ffe -> :sswitch_2
        0x1181f11 -> :sswitch_2
        0x1181f21 -> :sswitch_2
        0x1181f22 -> :sswitch_2
        0x11173001 -> :sswitch_2
        0x11173002 -> :sswitch_2
        0x11173003 -> :sswitch_2
        0x11173004 -> :sswitch_2
        0x11173005 -> :sswitch_2
        0x11173006 -> :sswitch_2
        0x11173007 -> :sswitch_2
        0x11173008 -> :sswitch_2
        0x11173009 -> :sswitch_2
        0x1117300a -> :sswitch_2
        0x1117300b -> :sswitch_2
        0x1117300c -> :sswitch_2
        0x1117300d -> :sswitch_2
        0x1117300e -> :sswitch_2
        0x1117300f -> :sswitch_2
        0x11173010 -> :sswitch_2
        0x11173011 -> :sswitch_2
        0x11173012 -> :sswitch_2
        0x11173013 -> :sswitch_2
        0x11173014 -> :sswitch_2
        0x11173015 -> :sswitch_2
        0x11173016 -> :sswitch_2
        0x11173017 -> :sswitch_2
        0x11173018 -> :sswitch_2
        0x11173019 -> :sswitch_2
        0x1117301a -> :sswitch_2
        0x1117301b -> :sswitch_2
        0x1117301c -> :sswitch_2
        0x1117301d -> :sswitch_2
        0x1117301e -> :sswitch_2
        0x1117301f -> :sswitch_2
        0x11173020 -> :sswitch_2
        0x11173021 -> :sswitch_2
        0x11173022 -> :sswitch_2
        0x11173023 -> :sswitch_2
        0x11173024 -> :sswitch_2
        0x11173025 -> :sswitch_2
        0x11173026 -> :sswitch_2
        0x11173027 -> :sswitch_2
        0x11173028 -> :sswitch_2
        0x11173029 -> :sswitch_2
        0x1117302a -> :sswitch_2
        0x1117302b -> :sswitch_2
        0x1117302c -> :sswitch_2
        0x1117302d -> :sswitch_2
        0x1117302e -> :sswitch_2
        0x1117302f -> :sswitch_2
        0x11173030 -> :sswitch_2
        0x11173031 -> :sswitch_2
        0x11173032 -> :sswitch_2
        0x11173033 -> :sswitch_2
        0x11173034 -> :sswitch_2
        0x11173035 -> :sswitch_2
        0x11173036 -> :sswitch_2
        0x11173037 -> :sswitch_2
        0x11173038 -> :sswitch_2
        0x1117ff71 -> :sswitch_2
        0x1117ff72 -> :sswitch_2
        0x1117ff73 -> :sswitch_2
        0x1117ffa1 -> :sswitch_2
        0x1117fff1 -> :sswitch_2
        0x1117fff2 -> :sswitch_2
        0x1117fff3 -> :sswitch_2
        0x1117fff4 -> :sswitch_2
        0x1117fff5 -> :sswitch_2
        0x1117fff6 -> :sswitch_2
        0x1117fff7 -> :sswitch_2
        0x1117fff8 -> :sswitch_2
        0x1117fff9 -> :sswitch_2
        0x1117fffa -> :sswitch_2
        0x1117fffb -> :sswitch_2
        0x1117fffc -> :sswitch_2
        0x1117fffd -> :sswitch_2
        0x1117fffe -> :sswitch_2
        0x1117ffff -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Llbx;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iget-object v1, p0, Llbx;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 53
    :cond_0
    iget-object v0, p0, Llbx;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x2

    iget-object v1, p0, Llbx;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 56
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 57
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 62
    iget-object v1, p0, Llbx;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x1

    iget-object v2, p0, Llbx;->a:Ljava/lang/Integer;

    .line 64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_0
    iget-object v1, p0, Llbx;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 67
    const/4 v1, 0x2

    iget-object v2, p0, Llbx;->b:Ljava/lang/String;

    .line 68
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_1
    return v0
.end method
